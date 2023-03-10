kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
stopsound @a * entity.bat.death

execute if entity @e[nbt={Color:2193419},tag=!red,tag=!blue,limit=1,sort=nearest] unless entity @e[tag=archertrack,tag=red] at @e[nbt={Color:2193419},tag=!red,tag=!blue,limit=1,sort=nearest] run summon bat ~ ~ ~ {NoAI:1b,Tags:["archertrack","red"],Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
data merge entity @e[nbt={Color:2193419},tag=!red,tag=!blue,limit=1,sort=nearest] {Color:-1,damage:.01d,Tags:["archergrapple","red"],crit:0b}
data modify entity @e[tag=archertrack,limit=1,tag=red] Leash set from entity @s[team=uRed]
tp @e[tag=archertrack,tag=red] @e[tag=archergrapple,limit=1,tag=red]
execute at @s[team=uRed] facing entity @e[tag=archertrack,limit=1,tag=red] eyes unless entity @e[tag=archergrapple,tag=red] run tp @s[team=uRed] ^ ^.2 ^1.8
execute at @s[team=uRed] unless entity @e[tag=archergrapple,tag=red] run kill @e[tag=archertrack,distance=..2,tag=red]