execute as @a[tag=vampsucked,team=uRed] run scoreboard players add @s vampsuck 1
execute as @a[tag=vampsucked,scores={vampsuck=8..},team=uRed] run damage @s 2 player_attack by @a[limit=1,sort=nearest,team=uBlue,scores={class=19}]
execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:18}]}] run effect clear @s minecraft:regeneration
execute if entity @a[team=uRed,tag=vampsucked,scores={vampsuck=8..}] run effect give @s regeneration 1 5 true
execute as @a[tag=vampsucked,scores={vampsuck=8..},team=uRed] run scoreboard players reset @s vampsuck
tag @a[tag=vampsucked,team=uRed] remove vampdontsuck
tag @a[tag=vampsucked,team=uRed] remove vampsucked

execute if score @s vampdetect matches -1 run kill @e[tag=vampbatblue]
execute if score @s vampdetect matches -1 run kill @e[tag=vamprideblue]