#puts people who run /trigger gazebo in the gazebo lobby and resets /trigger
execute as @a[scores={gazebo=1..}] at @s run function under_pack:gazebo_functions/gazebo_enter
scoreboard players enable @a gazebo

#trigger commands for each of the classes
execute as @a[scores={alchemist=1..}] at @s run function under_pack:alchemist_functions/alchemist_trigger
scoreboard players enable @a alchemist
execute as @a[scores={archer=1..}] at @s run function under_pack:archer_functions/archer_trigger
scoreboard players enable @a archer
execute as @a[scores={engineer=1..}] at @s run function under_pack:engineer_functions/engineer_trigger
scoreboard players enable @a engineer
execute as @a[scores={knight=1..}] at @s run function under_pack:knight_functions/knight_trigger
scoreboard players enable @a knight
execute as @a[scores={lumberjack=1..}] at @s run function under_pack:lumberjack_functions/lumberjack_trigger
scoreboard players enable @a lumberjack
execute as @a[scores={ninja=1..}] at @s run function under_pack:ninja_functions/ninja_trigger
scoreboard players enable @a ninja
execute as @a[scores={paladin=1..}] at @s run function under_pack:paladin_functions/paladin_trigger
scoreboard players enable @a paladin
execute as @a[scores={rogue=1..}] at @s run function under_pack:rogue_functions/rogue_trigger
scoreboard players enable @a rogue
execute as @a[scores={scientist=1..}] at @s run function under_pack:scientist_functions/scientist_trigger
scoreboard players enable @a scientist
execute as @a[scores={wizard=1..}] at @s run function under_pack:wizard_functions/wizard_trigger
scoreboard players enable @a wizard