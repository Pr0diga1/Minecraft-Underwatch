scoreboard players reset @s ability2
execute if entity @s[tag=share_heal] run effect clear @s regeneration
execute if entity @s[tag=share_heal] run return run tag @s remove share_heal

execute if entity @s[team=uBlue] as @a[tag=share_heal,team=uBlue] run effect clear @s regeneration
execute if entity @s[team=uBlue] as @a[tag=share_heal,team=uBlue] run return run tag @s remove share_heal
execute if entity @s[team=uRed] as @a[tag=share_heal,team=uRed] run effect clear @s regeneration
execute if entity @s[team=uRed] as @a[tag=share_heal,team=uRed] run tag @s remove share_heal

say clear shit