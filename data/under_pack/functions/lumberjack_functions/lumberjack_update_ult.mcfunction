execute store result score @s levels run experience query @s levels
execute if score @s ultPercent matches 1.. if score @s levels matches ..99 run experience add @s 1 levels
execute if score @s ultPercent matches 1.. run scoreboard players remove @s ultPercent 1
execute if score @s ultPercent matches 1.. run function under_pack:lumberjack_functions/lumberjack_update_ult