#change the state
scoreboard players set @s elementalWaterState 0
#kill the marker
execute as @s[team=uRed] run kill @e[type=marker,tag=redElementalWater]
execute as @s[team=uBlue] run kill @e[type=marker,tag=blueElementalWater]
#reset the timer
execute as @s[team=uRed] run scoreboard players set @a[team=uRed] elementalWaterHit 0
execute as @s[team=uBlue] run scoreboard players set @a[team=uBlue] elementalWaterHit 0
#clear regen
execute as @s[team=uRed] run effect clear @a[team=uRed] regeneration
execute as @s[team=uBlue] run effect clear @a[team=uBlue] regeneration
#reset reset
scoreboard players reset @s reset