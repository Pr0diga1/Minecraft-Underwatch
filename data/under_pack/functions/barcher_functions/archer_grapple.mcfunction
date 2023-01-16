kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
stopsound @a * entity.bat.death
#red
execute if entity @s[team=uRed] if entity @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] unless entity @e[tag=archertrack,tag=red] at @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] run summon bat ~ ~ ~ {NoAI:1b,Tags:["archertrack","red"],Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[team=uRed] run data merge entity @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] {Color:-1,damage:0d,Tags:["archergrapple","red"],crit:0b}
execute if entity @s[team=uRed] run data modify entity @e[tag=archertrack,limit=1,tag=red] Leash set from entity @s
execute if entity @s[team=uRed] run tp @e[tag=archertrack,tag=red] @e[tag=archergrapple,limit=1,tag=red]
execute if entity @s[team=uRed] at @s facing entity @e[tag=archertrack,limit=1,tag=red] eyes unless entity @e[tag=archergrapple,tag=red] run tp @s ^ ^.2 ^2
execute if entity @s[team=uRed] at @s unless entity @e[tag=archergrapple,tag=red] run kill @e[tag=archertrack,distance=..2,tag=red]

#blue
execute if entity @s[team=uBlue] if entity @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] unless entity @e[tag=archertrack,tag=blue,limit=1,sort=nearest] at @e[nbt={Color:39168},tag=!red,tag=!blue] run summon bat ~ ~ ~ {NoAI:1b,Tags:["archertrack","blue"],Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:1b,Duration:999999,ShowParticles:0b}]}
execute if entity @s[team=uBlue] run data merge entity @e[nbt={Color:39168},tag=!red,tag=!blue,limit=1,sort=nearest] {Color:-1,damage:0d,Tags:["archergrapple","blue"],crit:0b}
execute if entity @s[team=uBlue] run data modify entity @e[tag=archertrack,limit=1,tag=blue] Leash set from entity @s
execute if entity @s[team=uBlue] run tp @e[tag=archertrack,tag=blue] @e[tag=archergrapple,limit=1,tag=blue]
execute if entity @s[team=uBlue] at @s facing entity @e[tag=archertrack,limit=1,sort=nearest,tag=blue] eyes unless entity @e[tag=archergrapple,tag=blue] run tp @s ^ ^.2 ^2
execute if entity @s[team=uBlue] at @s unless entity @e[tag=archergrapple,tag=blue] run kill @e[tag=archertrack,distance=..2,tag=blue]
