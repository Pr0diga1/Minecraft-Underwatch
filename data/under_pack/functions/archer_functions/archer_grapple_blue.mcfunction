kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
stopsound @a * entity.bat.death


execute if entity @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] unless entity @e[tag=archertrack,tag=blue,limit=1,sort=nearest] at @e[nbt={Color:39168},tag=!red,tag=!blue] run summon bat ~ ~ ~ {NoAI:1b,Tags:["archertrack","blue"],Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
data merge entity @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] {Color:-1,damage:.01d,Tags:["archergrapple","blue"],crit:0b}
data modify entity @e[tag=archertrack,limit=1,tag=blue] Leash set from entity @s
tp @e[tag=archertrack,tag=blue] @e[tag=archergrapple,limit=1,tag=blue]
execute at @s facing entity @e[tag=archertrack,limit=1,sort=nearest,tag=blue] eyes unless entity @e[tag=archergrapple,tag=blue] run tp @s ^ ^.2 ^2
execute at @s unless entity @e[tag=archergrapple,tag=blue] run kill @e[tag=archertrack,distance=..2,tag=blue]