# Tag the current target
execute if entity @s[team=uBlue] as @a[tag=target_locked,team=uRed] if score @s rogueUltTimingBuffer = IDBlue constant run tag @s add the_target
execute if entity @s[team=uRed] as @a[tag=target_locked,team=uBlue] if score @s rogueUltTimingBuffer = IDRed constant run tag @s add the_target

# Teleport to target
execute if entity @s[tag=uBlue] rotated as @s at @a[tag=the_target,team=uRed] run tp @s ^ ^ ^-2
execute if entity @s[tag=uRed] rotated as @s at @a[tag=the_target,team=uBlue] run tp @s ^ ^ ^-2

# End the ult
execute if entity @s[tag=uBlue] if score IDBlue constant matches ..0 run function under_pack:rogue_functions/ult_end
execute if entity @s[tag=uRed] if score IDRed constant matches ..0 run function under_pack:rogue_functions/ult_end
