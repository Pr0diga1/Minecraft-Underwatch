execute at @s unless entity @e[tag=vampguy,tag=blue] run summon marker ~ ~ ~ {Tags:["vampguy","blue"]}
execute at @s run ride @n[tag=vampguy,tag=blue] mount @n[predicate=under_pack:vampire/bombblue]