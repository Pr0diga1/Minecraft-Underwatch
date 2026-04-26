title @s actionbar {"color":"blue","text":"Playing Ballad of the Final Stand"}
execute at @s[team=uRed] run scoreboard players set @a[team=uRed,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] run scoreboard players set @a[team=uBlue,distance=..8] bard_barian_inrange 3
execute at @s[team=uBlue] as @a[team=uBlue,distance=..8] run attribute @s minecraft:armor modifier add bard_barian_stand_norm 8 add_value
execute at @s[team=uRed] as @a[team=uRed,distance=..8] run attribute @s minecraft:armor modifier add bard_barian_stand_norm 8 add_value
execute at @s[team=uBlue] as @a[team=uBlue,distance=..8] run attribute @s minecraft:armor_toughness modifier add bard_barian_stand_norm 10 add_value
execute at @s[team=uRed] as @a[team=uRed,distance=..8] run attribute @s minecraft:armor_toughness modifier add bard_barian_stand_norm 10 add_value
execute at @s anchored eyes positioned ^ ^ ^ run function under_pack:bard_barian/stand/stand_particles