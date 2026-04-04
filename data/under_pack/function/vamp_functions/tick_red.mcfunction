#bat
execute if score @s vampdetect matches 0.. run scoreboard players remove @s vampdetect 1
execute if score @s vampdetect matches 0 run function under_pack:vamp_functions/bat_die_red

#bloodbomb
execute if entity @e[predicate=under_pack:vampire/bombred] run function under_pack:vamp_functions/bomb_red_tick
execute as @e[tag=vampguy,tag=red] at @s unless entity @e[predicate=under_pack:vampire/bombred] run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["vamplode","red"],equipment:{feet:{id:"minecraft:book",count:1,components:{"minecraft:enchantments":{"under_pack:vamp/boom_red":1}}}}}