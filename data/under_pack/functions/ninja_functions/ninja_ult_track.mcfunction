#sets ult charge to 0 so it can be reavaluated for this tick
scoreboard players set @s ultCharge 0

#ticks
scoreboard players operation @s ultCharge += @s ultTicks

#kills
scoreboard players operation @s ultKillsBuffer = @s ultKills
scoreboard players operation @s ultKillsBuffer *= ninjaUltKills modifier
scoreboard players operation @s ultCharge += @s ultKillsBuffer

#sets the ult percent buffer
scoreboard players operation @s ultPercentBuffer = @s ultPercent

#set ult percent every tick
scoreboard players operation @s ultPercent = @s ultCharge
scoreboard players operation @s ultPercent /= ninjaUltPercent modifier

#sets the ult percent to however much it has changed
scoreboard players operation @s ultPercent -= @s ultPercentBuffer

#sets the buffer to whatever the ultPercent actually is
scoreboard players operation @s ultPercentBuffer += @s ultPercent

#updates levels
function under_pack:ninja_functions/ninja_update_ult

#resets ultPercent so the next buffer is accurate
scoreboard players operation @s ultPercent = @s ultPercentBuffer

#give the carrot on a stick if the ult charge is 100%
execute unless entity @s[nbt={Inventory:[{Slot:8b,tag:{ninjaUlt:1b}}]}] if score @s ultPercentBuffer matches 100.. run item replace entity @s hotbar.8 with carrot_on_a_stick{CustomModelData:2670004,display:{Name:'{"text":"Frenzy","color":"purple"}'},ninjaUlt:1b} 1