execute if entity @s[team=uRed] run effect give @a[distance=..8,team=uRed] speed 1 1 true
execute if entity @s[team=uBlue] run effect give @a[distance=..8,team=uBlue] speed 1 1 true
execute rotated ~5 ~5 run function under_pack:bard_barian/march/march_boost_particles
execute if score @s ability4 matches 1 run playsound minecraft:entity.generic.small_fall master @a ~ ~ ~ 8 0