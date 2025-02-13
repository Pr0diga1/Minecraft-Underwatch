execute if score @s vampdetect matches -1 at @s run summon bat ~ ~ ~ {attributes:[{id:"minecraft:scale",base:1.5}],Tags:["vampbatred"],Invulnerable:1b}
ride @s mount @e[tag=vampbatred,limit=1,sort=nearest]

execute at @s rotated as @s anchored eyes as @e[tag=vampbatred] run function under_pack:vamp_functions/bat_velo

attribute @s scale base set 0

scoreboard players remove @s vampblood 4
experience add @s -4
scoreboard players set @s vampdetect 3