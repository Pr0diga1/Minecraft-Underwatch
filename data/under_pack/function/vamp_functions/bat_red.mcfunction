execute if score @s vampdetect matches -1 at @s run summon bat ~ ~ ~ {attributes:[{id:"minecraft:generic.scale",base:1.5}],Tags:["vampbatred"]}
ride @s mount @e[tag=vampbatred,limit=1,sort=nearest]

execute at @s as @e[tag=vampbatred] rotated as @a[team=uRed,scores={class=19},limit=1,sort=nearest] anchored eyes run function under_pack:vamp_functions/bat_velo



scoreboard players set @s vampdetect 3