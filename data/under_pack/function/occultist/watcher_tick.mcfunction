advancement revoke @s only under_pack:occultist/watcher
execute if score @s ability1 matches 1.. run scoreboard players remove @s ability1 1
execute if score @s ability1 matches 1.. run return 0

execute if entity @s[team=uBlue] run summon item_display ~ ~ ~ {billboard:"center",Tags:["uBlue","EyeBeam"],item:{id:"minecraft:ender_eye",count:1}}
execute if entity @s[team=uRed] run summon item_display ~ ~ ~ {billboard:"center",Tags:["uRed","EyeBeam"],item:{id:"minecraft:ender_eye",count:1}}
tp @n[tag=EyeBeam] ~ ~1.5 ~ ~ ~
scoreboard players set @s ability1 20
