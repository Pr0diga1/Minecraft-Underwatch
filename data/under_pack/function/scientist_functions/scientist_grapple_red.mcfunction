kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
stopsound @a * entity.bat.death

execute if entity @e[nbt={item:{components:{"minecraft:potion_contents":{custom_color:2193418}}}},tag=!red,tag=!blue,limit=1,sort=nearest] unless entity @e[tag=archertrack,tag=red,limit=1,sort=nearest] at @e[nbt={item:{components:{"minecraft:potion_contents":{custom_color:2193418}}}},tag=!red,tag=!blue] run summon bat ~ ~ ~ {NoAI:1b,Tags:["archertrack","red"],Invulnerable:1b,active_effects:[{id:"invisibility",amplifier:1b,duration:-1,show_particles:0b}]}
data merge entity @e[nbt={item:{components:{"minecraft:potion_contents":{custom_color:2193418}}}},tag=!red,tag=!blue,limit=1,sort=nearest] {damage:.01d,Tags:["archergrapple","red"],crit:0b,item:{components:{potion_contents:{custom_color:-1}}}}
data modify entity @e[tag=archertrack,limit=1,tag=red] leash set from entity @s[team=uRed]
tp @e[tag=archertrack,tag=red] @e[tag=archergrapple,limit=1,tag=red]
execute at @s[team=uRed] facing entity @e[tag=archertrack,limit=1,sort=nearest,tag=red] eyes unless entity @e[tag=archergrapple,tag=red] run tp @s[team=uRed] ^ ^.2 ^1.8
execute at @s[team=uRed] unless entity @e[tag=archergrapple,tag=red] run kill @e[tag=archertrack,distance=..2,tag=red]
