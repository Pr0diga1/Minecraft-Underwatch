execute at @s unless entity @e[tag=vampguy,tag=red] run summon marker ~ ~ ~ {Tags:["vampguy","red"]}
execute at @s run ride @n[tag=vampguy,tag=red] mount @n[predicate=under_pack:vampire/bombred]