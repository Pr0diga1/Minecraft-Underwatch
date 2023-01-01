#adds 1 to ultticks
scoreboard players add @s ultTicks 1

#sets ult charge to 0 so it can be reavaluated for this tick
scoreboard players set @s ultCharge 0

#ticks
scoreboard players operation @s ultCharge += @s ultTicks

#kills
scoreboard players operation @s ultKillsBuffer = @s ultKills
scoreboard players operation @s ultKillsBuffer *= scientistUltKills modifier
scoreboard players operation @s ultCharge += @s ultKillsBuffer

#sets the ult percent buffer
scoreboard players operation @s ultPercentBuffer = @s ultPercent

#set ult percent every tick
scoreboard players operation @s ultPercent = @s ultCharge
scoreboard players operation @s ultPercent /= scientistUltPercent modifier

#sets the ult percent to however much it has changed
scoreboard players operation @s ultPercent -= @s ultPercentBuffer

#sets the buffer to whatever the ultPercent actually is
scoreboard players operation @s ultPercentBuffer += @s ultPercent

#updates levels
function under_pack:scientist_functions/scientist_ult_update

#resets ultPercent so the next buffer is accurate
scoreboard players operation @s ultPercent = @s ultPercentBuffer

#give the carrot on a stick if the ult charge is 100%
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{scientistSmoke:1b}}]}] if score @s ultPercentBuffer matches 100.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Reveal Arrow","color":"dark_blue"}'},scientistSmoke:1b} 1