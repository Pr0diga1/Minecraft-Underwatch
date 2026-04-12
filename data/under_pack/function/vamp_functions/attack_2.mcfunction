#summon markers
summon marker ^-2 ^ ^4.8 {Tags:["vamp","vampEnd"]}
summon marker ^2 ^ ^1.6 {Tags:["vamp","vampStart"]}

#playsound
execute at @s run playsound minecraft:item.spear.lunge_1 master @a ~ ~ ~ 0.3 1.5

##ray 1
#move markers
execute as @e[type=marker,tag=vamp] at @s run tp @s ~ ~0.4 ~
execute as @e[type=marker,tag=vampStart] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=vampEnd,limit=1,sort=nearest]
#reset trackers
scoreboard players set distance vampattack 0
#ray
execute at @e[type=marker,tag=vampStart,limit=1,sort=nearest] run function under_pack:vamp_functions/attack_ray

##ray 2
#move markers
execute as @e[type=marker,tag=vamp] at @s run tp @s ~ ~0.6 ~
#reset trackers
scoreboard players set distance vampattack 0
#ray
execute at @e[type=marker,tag=vampStart,limit=1,sort=nearest] run function under_pack:vamp_functions/attack_ray

##ray 1
#move markers
execute as @e[type=marker,tag=vamp] at @s run tp @s ~ ~0.6 ~
#reset trackers
scoreboard players set distance vampattack 0
#ray
execute at @e[type=marker,tag=vampStart,limit=1,sort=nearest] run function under_pack:vamp_functions/attack_ray

#kill markers
kill @e[type=marker,tag=vamp]