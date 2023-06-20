#summon armor stand 
#red
execute rotated as @s[team=uRed] positioned 0 0 0 align xyz run summon minecraft:marker ^0.15 ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ninjaStand2","red"]}
execute rotated as @s[team=uRed] positioned 0 0 0 align xyz run summon minecraft:marker ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ninjaStand1","red"]}
execute rotated as @s[team=uRed] positioned 0 0 0 align xyz run summon minecraft:marker ^-0.15 ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ninjaStand3","red"]}
#blue
execute rotated as @s[team=uBlue] positioned 0 0 0 align xyz run summon minecraft:marker ^0.15 ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ninjaStand2","blue"]}
execute rotated as @s[team=uBlue] positioned 0 0 0 align xyz run summon minecraft:marker ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ninjaStand1","blue"]}
execute rotated as @s[team=uBlue] positioned 0 0 0 align xyz run summon minecraft:marker ^-0.15 ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["ninjaStand3","blue"]}

#summon the arrows
#red
execute at @s[team=uRed] run summon minecraft:arrow ~ ~1.2 ~ {Tags:["ninjaArrow1","red"],damage:2.4d}
execute at @s[team=uRed] run summon minecraft:arrow ~ ~1.2 ~ {Tags:["ninjaArrow2","red"],damage:2.4d}
execute at @s[team=uRed] run summon minecraft:arrow ~ ~1.2 ~ {Tags:["ninjaArrow3","red"],damage:2.4d}
#blue
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~1.2 ~ {Tags:["ninjaArrow1","blue"],damage:2.4d}
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~1.2 ~ {Tags:["ninjaArrow2","blue"],damage:2.4d}
execute at @s[team=uBlue] run summon minecraft:arrow ~ ~1.2 ~ {Tags:["ninjaArrow3","blue"],damage:2.4d}

#give the arrows owners
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaArrow1] Owner set from entity @s UUID
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaArrow2] Owner set from entity @s UUID
execute at @s run data modify entity @e[type=arrow,limit=1,sort=nearest,tag=ninjaArrow3] Owner set from entity @s UUID

#playsound
execute at @s run playsound minecraft:entity.villager.work_fletcher master @a ~ ~ ~ 5 2

#get the scoreboard to use for velo

#red
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow1] positioned 0 0 0 store result score @s ninjaMotionX run data get entity @e[tag=ninjaStand1,limit=1,tag=red] Pos[0] 1000
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow1] positioned 0 0 0 store result score @s ninjaMotionY run data get entity @e[tag=ninjaStand1,limit=1,tag=red] Pos[1] 1000
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow1] positioned 0 0 0 store result score @s ninjaMotionZ run data get entity @e[tag=ninjaStand1,limit=1,tag=red] Pos[2] 1000

execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow2] positioned 0 0 0 store result score @s ninjaMotionX run data get entity @e[tag=ninjaStand2,limit=1,tag=red] Pos[0] 1000
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow2] positioned 0 0 0 store result score @s ninjaMotionY run data get entity @e[tag=ninjaStand2,limit=1,tag=red] Pos[1] 1000
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow2] positioned 0 0 0 store result score @s ninjaMotionZ run data get entity @e[tag=ninjaStand2,limit=1,tag=red] Pos[2] 1000

execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow3] positioned 0 0 0 store result score @s ninjaMotionX run data get entity @e[tag=ninjaStand3,limit=1,tag=red] Pos[0] 1000
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow3] positioned 0 0 0 store result score @s ninjaMotionY run data get entity @e[tag=ninjaStand3,limit=1,tag=red] Pos[1] 1000
execute at @s[team=uRed] positioned ~ ~1.2 ~ as @e[distance=..1,tag=red,tag=ninjaArrow3] positioned 0 0 0 store result score @s ninjaMotionZ run data get entity @e[tag=ninjaStand3,limit=1,tag=red] Pos[2] 1000

#blue
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow1] positioned 0 0 0 store result score @s ninjaMotionX run data get entity @e[tag=ninjaStand1,limit=1,tag=blue] Pos[0] 1000
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow1] positioned 0 0 0 store result score @s ninjaMotionY run data get entity @e[tag=ninjaStand1,limit=1,tag=blue] Pos[1] 1000
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow1] positioned 0 0 0 store result score @s ninjaMotionZ run data get entity @e[tag=ninjaStand1,limit=1,tag=blue] Pos[2] 1000

execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow2] positioned 0 0 0 store result score @s ninjaMotionX run data get entity @e[tag=ninjaStand2,limit=1,tag=blue] Pos[0] 1000
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow2] positioned 0 0 0 store result score @s ninjaMotionY run data get entity @e[tag=ninjaStand2,limit=1,tag=blue] Pos[1] 1000
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow2] positioned 0 0 0 store result score @s ninjaMotionZ run data get entity @e[tag=ninjaStand2,limit=1,tag=blue] Pos[2] 1000

execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow3] positioned 0 0 0 store result score @s ninjaMotionX run data get entity @e[tag=ninjaStand3,limit=1,tag=blue] Pos[0] 1000
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow3] positioned 0 0 0 store result score @s ninjaMotionY run data get entity @e[tag=ninjaStand3,limit=1,tag=blue] Pos[1] 1000
execute at @s[team=uBlue] positioned ~ ~1.2 ~ as @e[distance=..1,tag=blue,tag=ninjaArrow3] positioned 0 0 0 store result score @s ninjaMotionZ run data get entity @e[tag=ninjaStand3,limit=1,tag=blue] Pos[2] 1000


#kill the stands
kill @e[tag=ninjaStand1]
kill @e[tag=ninjaStand2]
kill @e[tag=ninjaStand3]

#reset the carrot on stick objective
scoreboard players reset @s reset

#cooldowns
scoreboard players set @s ability2 0
item replace entity @s hotbar.1 with carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Shuriken Throw","color":"blue"}'},Unbreakable:1b,ninjaToss:1b} 1