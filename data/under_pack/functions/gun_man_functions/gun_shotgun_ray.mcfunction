effect give @s resistance 1 255 false
execute as @s at @s run summon minecraft:creeper ^ ^1 ^1 {powered:0b,Fuse:0,ignited:1b,active_effects:[{id:"minecraft:invisibility",amplifier:255b,duration:20,show_particles:0b}]}


scoreboard players add @s ability2 18