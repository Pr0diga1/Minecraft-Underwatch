#puts people who run /trigger gazebo in the gazebo lobby and resets /trigger
execute as @a[scores={gazebo=1..}] at @s run function under_pack:gazebo_functions/gazebo_enter
scoreboard players enable @a gazebo
execute as @a[scores={park=1..}] at @s run function under_pack:park_functions/park_enter
scoreboard players enable @a park
execute as @a[scores={ruin=1..}] at @s run function under_pack:ruin_functions/ruin_enter
scoreboard players enable @a ruin
execute as @a[scores={res=1..}] at @s run function under_pack:res_functions/res_enter
scoreboard players enable @a res
execute as @a[scores={city=1..}] at @s run function under_pack:city_functions/city_enter
scoreboard players enable @a city

execute as @a[scores={Reset=1..}] at @s run function under_pack:general_functions/general_restart
scoreboard players enable @a Reset
execute as @a[scores={red=1..}] at @s run function under_pack:trigger_functions/red
scoreboard players enable @a red
execute as @a[scores={blue=1..}] at @s run function under_pack:trigger_functions/blue
scoreboard players enable @a blue
execute as @a[scores={leave=1..}] at @s run function under_pack:trigger_functions/leave
scoreboard players enable @a leave

#trigger commands for each of the classes
execute as @a[scores={alchemist=1..}] at @s run function under_pack:alchemist_functions/alchemist_trigger
scoreboard players enable @a alchemist
execute as @a[scores={archer=1..}] at @s run function under_pack:archer_functions/archer_trigger
scoreboard players enable @a archer
execute as @a[scores={engineer=1..}] at @s run function under_pack:engineer_functions/engineer_trigger
scoreboard players enable @a engineer
execute as @a[scores={paladin=1..}] at @s run function under_pack:knight_functions/knight_trigger
scoreboard players enable @a paladin
execute as @a[scores={lumberjack=1..}] at @s run function under_pack:lumberjack_functions/lumberjack_trigger
scoreboard players enable @a lumberjack
execute as @a[scores={ninja=1..}] at @s run function under_pack:ninja_functions/ninja_trigger
scoreboard players enable @a ninja
execute as @a[scores={bulwark=1..}] at @s run function under_pack:paladin_functions/paladin_trigger
scoreboard players enable @a bulwark
execute as @a[scores={rogue=1..}] at @s run function under_pack:rogue_functions/rogue_trigger
scoreboard players enable @a rogue
execute as @a[scores={scientist=1..}] at @s run function under_pack:scientist_functions/scientist_trigger
scoreboard players enable @a scientist
execute as @a[scores={wizard=1..}] at @s run function under_pack:wizard_functions/wizard_trigger
scoreboard players enable @a wizard
execute as @a[scores={mermaid=1..}] at @s run function under_pack:mermaid_functions/mermaid_trigger
scoreboard players enable @a mermaid
execute as @a[scores={elemental=1..}] at @s run function under_pack:elemental_functions/elemental_trigger
scoreboard players enable @a elemental