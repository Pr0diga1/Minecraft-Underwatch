#has the ray hit a block
execute unless block ~ ~.01 ~ #under_pack:non_solid run scoreboard players set @s wizardHit 1
#add to distance
scoreboard players add @s wizardDistance 1
#summon claws
execute as @s[team=uRed] run summon evoker_fangs ~ ~ ~ {Tags:["red"]}
execute as @s[team=uBlue] run summon evoker_fangs ~ ~ ~ {Tags:["blue"]}
#rerun
execute if score @s wizardHit matches 0 if score @s wizardDistance matches ..15 positioned ^ ^ ^1 run function under_pack:wizard_functions/wizard_claws_ray