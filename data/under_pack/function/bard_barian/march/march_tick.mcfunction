title @s actionbar {"color":"blue","text":"Playing Marching Shanty"}
execute at @s[team=uRed] run scoreboard players set @a[team=uRed,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] run scoreboard players set @a[team=uBlue,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] as @a[team=uBlue,distance=..8] run attribute @s minecraft:movement_speed modifier add bard_barian_march_norm .02 add_value
execute at @s[team=uRed] as @a[team=uRed,distance=..8] run attribute @s minecraft:movement_speed modifier add bard_barian_march_norm .02 add_value
execute at @s anchored eyes positioned ^ ^ ^ run function under_pack:bard_barian/march/march_particles
execute at @s run function under_pack:bard_barian/march/march_sound