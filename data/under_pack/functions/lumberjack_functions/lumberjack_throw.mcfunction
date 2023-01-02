#summons an armorstand that stores where you are looking
execute rotated as @s[team=uRed] positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["lumberaim","red"]}
execute rotated as @s[team=uBlue] positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["lumberaim","blue"]}
#summons an arrow at your face
execute at @s[team=uRed] run summon minecraft:arrow ~ ~1.5 ~ {Tags:["lumberarrow","red"],CustomName:'{"text":"Axe Throw"}',PierceLevel:10b,damage:6.3d}
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~1.5 ~ {Tags:["lumberarrow","blue"],CustomName:'{"text":"Axe Throw"}',PierceLevel:10b,damage:6.3d}
#set the owner of the arrow to the UUID of the player
execute at @s run data modify entity @e[type=arrow,tag=lumberarrow,limit=1,sort=nearest] Owner set from entity @s UUID
#summons an armor stand holding an axe so it looks like the throw is an axe
execute if entity @s[team=uRed] at @s run summon armor_stand ~ ~ ~ {Tags:["lumberaxe","red"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
execute if entity @s[team=uBlue] at @s run summon armor_stand ~ ~ ~ {Tags:["lumberaxe","blue"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
#updates scoreboards to where the armorstand is facing
#red
execute at @s[team=uRed] positioned ~ ~1.5 ~ as @e[distance=..1,tag=lumberarrow,tag=red] positioned 0 0 0 store result score @s LumberjackMotionX run data get entity @e[tag=lumberaim,limit=1,tag=red] Pos[0] 1000
execute at @s[team=uRed] positioned ~ ~1.5 ~ as @e[distance=..1,tag=lumberarrow,tag=red] positioned 0 0 0 store result score @s LumberjackMotionY run data get entity @e[tag=lumberaim,limit=1,tag=red] Pos[1] 1000
execute at @s[team=uRed] positioned ~ ~1.5 ~ as @e[distance=..1,tag=lumberarrow,tag=red] positioned 0 0 0 store result score @s LumberjackMotionZ run data get entity @e[tag=lumberaim,limit=1,tag=red] Pos[2] 1000
#blue
execute at @s[team=uBlue] positioned ~ ~1.5 ~ as @e[distance=..1,tag=lumberarrow,tag=blue] positioned 0 0 0 store result score @s LumberjackMotionX run data get entity @e[tag=lumberaim,limit=1,tag=blue] Pos[0] 1000
execute at @s[team=uBlue] positioned ~ ~1.5 ~ as @e[distance=..1,tag=lumberarrow,tag=blue] positioned 0 0 0 store result score @s LumberjackMotionY run data get entity @e[tag=lumberaim,limit=1,tag=blue] Pos[1] 1000
execute at @s[team=uBlue] positioned ~ ~1.5 ~ as @e[distance=..1,tag=lumberarrow,tag=blue] positioned 0 0 0 store result score @s LumberjackMotionZ run data get entity @e[tag=lumberaim,limit=1,tag=blue] Pos[2] 1000
#cooldown
scoreboard players set @s ability1 0
item replace entity @s hotbar.2 with stone_axe{Damage:131} 1
#reset looking storage
kill @e[tag=lumberaim]
scoreboard players reset @s reset
playsound minecraft:item.axe.wax_off master @a ~5 ~5 ~5 4 1