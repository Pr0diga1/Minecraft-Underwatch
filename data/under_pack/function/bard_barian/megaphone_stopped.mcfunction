scoreboard players set @s ability4 0
execute if entity @s[team=uRed] as @a[team=uRed] run attribute @s movement_speed modifier remove bard_barian_march_boost
execute if entity @s[team=uBlue] as @a[team=uBlue] run attribute @s movement_speed modifier remove bard_barian_march_boost
