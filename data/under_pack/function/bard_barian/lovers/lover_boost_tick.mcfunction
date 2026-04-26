execute at @s[team=uRed] run scoreboard players operation @a[team=uRed,distance=..8] regen_constant = bard_barian_boost regen_constant
execute at @s[team=uBlue] run scoreboard players operation @a[team=uBlue,distance=..8] regen_constant = bard_barian_boost regen_constant
execute at @s[team=uRed] as @a[team=uRed,distance=..8] run function under_pack:regeneration/give
execute at @s[team=uBlue] as @a[team=uBlue,distance=..8] run function under_pack:regeneration/give
execute rotated ~5 ~5 run function under_pack:bard_barian/lovers/lovers_boost_particles
execute if score @s ability4 matches 1 run playsound minecraft:entity.generic.small_fall master @a ~ ~ ~ 8 0