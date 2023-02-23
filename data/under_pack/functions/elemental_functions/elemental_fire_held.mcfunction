#set the player's fire
scoreboard players set @s elementalFireTimer 1
execute if score @s[team=uRed] elementalFireBuffer matches 0 run scoreboard players set @a[team=uBlue] elementalFireHit 0
execute if score @s[team=uBlue] elementalFireBuffer matches 0 run scoreboard players set @a[team=uRed] elementalFireHit 0

#call the fire
execute if score @s elementalBar matches 1.. at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:elemental_functions/elemental_fire