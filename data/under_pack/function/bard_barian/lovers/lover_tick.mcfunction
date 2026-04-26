title @s actionbar {"color":"light_purple","text":"Playing Lovers Lement"}
execute at @s[team=uRed] run scoreboard players operation @a[team=uRed,distance=..8] regen_constant = bard_barian_norm regen_constant
execute at @s[team=uBlue] run scoreboard players operation @a[team=uBlue,distance=..8] regen_constant = bard_barian_norm regen_constant
execute at @s as @a[team=uRed,distance=..8] run function under_pack:regeneration/give
execute at @s as @a[team=uBlue,distance=..8] run function under_pack:regeneration/give
execute at @s rotated as @s run function under_pack:bard_barian/lovers/particles