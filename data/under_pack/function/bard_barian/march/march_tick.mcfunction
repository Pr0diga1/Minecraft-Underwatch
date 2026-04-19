title @s actionbar {"color":"blue","text":"Playing Marching Shanty"}
execute at @s[team=uRed] run scoreboard players set @a[team=uRed,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] run effect give @a[team=uBlue,distance=..8] speed 1 0 true
execute at @s rotated as @s run function under_pack:bard_barian/march/march_particles