title @s actionbar {"color":"blue","text":"Playing Marching Shanty"}
execute at @s[team=uRed] run effect give @a[team=uRed,distance=..8] speed 1 0 true
execute at @s[team=uBlue] run effect give @a[team=uBlue,distance=..8] speed 1 0 true
execute at @s rotated as @s run function under_pack:bard_barian/march/march_particles