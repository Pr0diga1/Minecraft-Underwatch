title @s actionbar {"color":"light_purple","text":"Playing Lovers Lement"}
execute at @s[team=uRed] as @a[team=uRed,distance=..8] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 2 1 true
execute at @s[team=uBlue] as @a[team=uBlue,distance=..8] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 2 1 true
execute at @s rotated as @s run function under_pack:bard_barian/lovers/particles