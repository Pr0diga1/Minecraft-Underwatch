#shine
execute if entity @s[team=uRed,nbt={OnGround:0b}] if score @s celedamage matches 1.. as @a[team=uRed, distance=..8] run function under_pack:celestial_functions/sun/shine
execute if score @s[team=uBlue] celedamage matches 33.. as @a[team=uBlue, distance=..8] run function under_pack:celestial_functions/sun/shine

scoreboard players reset @s celedamage

