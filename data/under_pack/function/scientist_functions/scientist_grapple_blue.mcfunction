kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
stopsound @a * entity.bat.death

execute if entity @e[nbt={item:{components:{"minecraft:potion_contents":{custom_color:2193418}}}},tag=!red,tag=!blue,limit=1,sort=nearest] unless entity @e[tag=archertrack,tag=blue,limit=1,sort=nearest] at @e[nbt={item:{components:{"minecraft:potion_contents":{custom_color:2193418}}}},tag=!red,tag=!blue] run summon bat ~ ~ ~ {NoAI:1b,Tags:["archertrack","blue"],Invulnerable:1b,active_effects:[{id:"invisibility",amplifier:1b,duration:-1,show_particles:0b}]}
data merge entity @e[nbt={item:{components:{"minecraft:potion_contents":{custom_color:2193418}}}},tag=!red,tag=!blue,limit=1,sort=nearest] {damage:.01d,Tags:["archergrapple","blue"],crit:0b,item:{components:{potion_contents:{custom_color:-1}}}}
data modify entity @e[tag=archertrack,limit=1,tag=blue] leash set from entity @s[team=uBlue]
tp @e[tag=archertrack,tag=blue] @e[tag=archergrapple,limit=1,tag=blue]
execute at @s[team=uBlue] facing entity @e[tag=archertrack,limit=1,sort=nearest,tag=blue] eyes unless entity @e[tag=archergrapple,tag=blue] run tp @s[team=uBlue] ^ ^.2 ^1.8
execute at @s[team=uBlue] unless entity @e[tag=archergrapple,tag=blue] run kill @e[tag=archertrack,distance=..2,tag=blue]
