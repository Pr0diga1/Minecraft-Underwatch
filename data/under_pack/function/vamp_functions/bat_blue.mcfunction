execute if score @s vampdetect matches -1 at @s run summon bat ~ ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["vampbatblue"]}
ride @s mount @e[tag=vampbatblue,limit=1,sort=nearest]

execute at @s rotated as @s anchored eyes as @e[tag=vampbatblue] run function under_pack:vamp_functions/bat_velo


scoreboard players remove @s vampblood 1
scoreboard players set @s vampdetect 3