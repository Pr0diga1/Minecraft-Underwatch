execute at @s if entity @s[nbt={OnGround:1b}] run return fail
execute if score @s ability3 matches ..239 run return fail

#trigger dash
scoreboard players set @s vampbite 1
tag @s add vampdashing

playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 1.2 0.8

#reset
scoreboard players set @s ability3 0
title @s actionbar ["",{"text":""}]