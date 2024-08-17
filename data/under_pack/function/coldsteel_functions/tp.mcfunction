execute at @s[team=uRed] run summon minecraft:ender_pearl ~ ~1.5 ~ {Tags:["coldtp","red"]}
execute at @s[team=uBlue] run summon minecraft:ender_pearl ~ ~1.5 ~ {Tags:["coldtp","blue"]}

execute at @s run function under_pack:coldsteel_functions/tp_velo

execute at @s run playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~ 5 2
execute at @s[team=uRed] run data modify entity @e[limit=1,sort=nearest,tag=coldtp,tag=red] Owner set from entity @s UUID
execute at @s[team=uBlue] run data modify entity @e[limit=1,sort=nearest,tag=coldtp,tag=blue] Owner set from entity @s UUID

scoreboard players reset @s reset
scoreboard players set @s ability2 80