execute as @a[tag=vampsucked,team=uBlue] run scoreboard players add @s vampsuck 1
execute as @a[tag=vampsucked,scores={vampsuck=8..},team=uBlue] run damage @s 1 player_attack by @a[limit=1,sort=nearest,team=uRed,scores={class=19}]
execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:19}]}] run effect clear @s minecraft:regeneration
execute if entity @a[team=uBlue,tag=vampsucked,scores={vampsuck=8..}] run effect give @s regeneration 1 5 true
execute as @a[tag=vampsucked,scores={vampsuck=8..},team=uBlue] run scoreboard players reset @s vampsuck
tag @a[tag=vampsucked,team=uBlue] remove vampdontsuck
tag @a[tag=vampsucked,team=uBlue] remove vampsucked