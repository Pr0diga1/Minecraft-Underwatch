execute if entity @s[team=uRed] at @s run summon armor_stand ^3 ^ ^3 {Tags:["lumberaxemove","red"],NoGravity:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Pose:{RightArm:[370f,0f,270f]},HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
execute if entity @s[team=uRed] at @s run summon armor_stand ^-3 ^ ^3 {Tags:["lumberaxestill","red"],Invisible:1b,Invulnerable:1b,NoGravity:1b}
execute if entity @s[team=uRed] as @e[tag=lumberaxestill,tag=red] at @s run tp @s ~ ~ ~ facing entity @e[tag=lumberaxemove,limit=1,sort=nearest,tag=red] eyes
execute if entity @s[team=uRed] as @e[tag=lumberaxemove,tag=red] at @s run tp @s ~ ~ ~ facing entity @e[tag=lumberaxestill,limit=1,sort=nearest,tag=red] feet

execute if entity @s[team=uBlue] at @s run summon armor_stand ^3 ^ ^3 {Tags:["lumberaxemove","blue"],NoGravity:1b,Invulnerable:1b,ShowArms:1b,Invisible:1b,Pose:{RightArm:[270f,0f,270f]},HandItems:[{id:"minecraft:iron_axe",Count:1b},{}]}
execute if entity @s[team=uBlue] at @s run summon armor_stand ^-3 ^ ^3 {Tags:["lumberaxestill","blue"],Invisible:1b,Invulnerable:1b,NoGravity:1b}
execute if entity @s[team=uBlue] as @e[tag=lumberaxestill,tag=blue] at @s run tp @s ~ ~ ~ facing entity @e[tag=lumberaxemove,limit=1,sort=nearest,tag=blue] eyes
execute if entity @s[team=uBlue] as @e[tag=lumberaxemove,tag=blue] at @s run tp @s ~ ~ ~ facing entity @e[tag=lumberaxestill,limit=1,sort=nearest,tag=blue] feet

scoreboard players set @s lumberjack_sweep 13
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 8 1

scoreboard players set @s ability1 0
item replace entity @s hotbar.2 with stone_axe{CustomModelData:1} 1
#reset looking storage
scoreboard players reset @s reset
playsound minecraft:item.axe.wax_off master @a ~5 ~5 ~5 4 1
