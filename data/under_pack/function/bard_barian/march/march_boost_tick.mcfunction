execute at @s[team=uRed] run scoreboard players set @a[team=uRed,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] run scoreboard players set @a[team=uBlue,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] as @a[team=uBlue,distance=..8] run attribute @s minecraft:movement_speed modifier add bard_barian_march_boost .02 add_value
execute at @s[team=uRed] as @a[team=uRed,distance=..8] run attribute @s minecraft:movement_speed modifier add bard_barian_march_boost .02 add_value
execute rotated ~5 ~5 run function under_pack:bard_barian/march/march_boost_particles
execute if score @s ability4 matches 1 run playsound minecraft:entity.generic.small_fall master @a ~ ~ ~ 8 0