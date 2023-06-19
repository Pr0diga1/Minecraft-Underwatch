#summon the snowball
execute rotated as @s[team=uRed] positioned 0 0 0 align xyz run summon minecraft:marker ^ ^ ^1 {NoGravity:1b,Tags:["wizardtrack","red"]}
execute rotated as @s[team=uBlue] positioned 0 0 0 align xyz run summon minecraft:marker ^ ^ ^1 {NoGravity:1b,Tags:["wizardtrack","blue"]}

execute at @s[team=uRed] anchored eyes run summon snowball ^ ^ ^0.5 {Tags:["wizardball","red"],Item:{id:"minecraft:fire_charge",Count:1b}}
execute at @s[team=uBlue] anchored eyes run summon snowball ^ ^ ^0.5 {Tags:["wizardball","blue"],Item:{id:"minecraft:fire_charge",Count:1b}}

execute at @s[team=uRed] positioned ~ ~1.5 ~ as @e[distance=..1,tag=red,tag=wizardball] positioned 0 0 0 store result score @s wizardMotionX run data get entity @e[tag=wizardtrack,limit=1,tag=red] Pos[0] 1000
execute at @s[team=uRed] positioned ~ ~1.5 ~ as @e[distance=..1,tag=red,tag=wizardball] positioned 0 0 0 store result score @s wizardMotionY run data get entity @e[tag=wizardtrack,limit=1,tag=red] Pos[1] 1000
execute at @s[team=uRed] positioned ~ ~1.5 ~ as @e[distance=..1,tag=red,tag=wizardball] positioned 0 0 0 store result score @s wizardMotionZ run data get entity @e[tag=wizardtrack,limit=1,tag=red] Pos[2] 1000

execute at @s[team=uBlue] positioned ~ ~1.5 ~ as @e[distance=..1,tag=blue,tag=wizardball] positioned 0 0 0 store result score @s wizardMotionX run data get entity @e[tag=wizardtrack,limit=1,tag=blue] Pos[0] 1000
execute at @s[team=uBlue] positioned ~ ~1.5 ~ as @e[distance=..1,tag=blue,tag=wizardball] positioned 0 0 0 store result score @s wizardMotionY run data get entity @e[tag=wizardtrack,limit=1,tag=blue] Pos[1] 1000
execute at @s[team=uBlue] positioned ~ ~1.5 ~ as @e[distance=..1,tag=blue,tag=wizardball] positioned 0 0 0 store result score @s wizardMotionZ run data get entity @e[tag=wizardtrack,limit=1,tag=blue] Pos[2] 1000

kill @e[tag=wizardtrack]
scoreboard players set @s ability5 0

schedule function under_pack:wizard_functions/wizard_ride_velo 1t

#reset
scoreboard players reset @s reset