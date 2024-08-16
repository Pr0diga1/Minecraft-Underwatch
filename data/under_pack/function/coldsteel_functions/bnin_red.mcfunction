summon arrow ~.25 ~1 ~ {NoGravity:1b,Motion:[1.5,0.0,0.0],Tags:["abnin","red"],damage:2.4d}
summon arrow ~-.25 ~1 ~ {NoGravity:1b,Motion:[-1.5,0.0,0.0],Tags:["abnin","red"],damage:2.4d}
summon arrow ~ ~1 ~.25 {NoGravity:1b,Motion:[0.0,0.0,1.5],Tags:["abnin","red"],damage:2.4d}
summon arrow ~ ~1 ~-.25 {NoGravity:1b,Motion:[0.0,0.0,-1.5],Tags:["abnin","red"],damage:2.4d}

summon arrow ~.25 ~1 ~.25 {NoGravity:1b,Motion:[1.0,0.0,1.0],Tags:["abnin","red"],damage:2.4d}
summon arrow ~.25 ~1 ~-.25 {NoGravity:1b,Motion:[1.0,0.0,-1.0],Tags:["abnin","red"],damage:2.4d}
summon arrow ~-.25 ~1 ~.25 {NoGravity:1b,Motion:[-1.0,0.0,1.0],Tags:["abnin","red"],damage:2.4d}
summon arrow ~-.25 ~1 ~-.25 {NoGravity:1b,Motion:[-1.0,0.0,-1.0],Tags:["abnin","red"],damage:2.4d}


execute at @s run playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~ 5 2

execute as @e[tag=abibn,tag=red] run data modify entity @s Owner set from entity @a[scores={class=18},limit=1,team=uRed] UUID
item replace entity @s hotbar.1 with barrier[custom_name='{"text":"NINE INCH NAILS on cooldown"}'] 8
scoreboard players set @s ability1 160
scoreboard players reset @s reset