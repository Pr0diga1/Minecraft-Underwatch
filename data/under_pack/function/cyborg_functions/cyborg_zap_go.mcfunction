#summon marker
summon marker ~ ~ ~ {Tags:["CyborgZapGuy"]}
scoreboard players set hit cyborgtimer 0
scoreboard players set distance cyborgtimer 22

#marker facing nearest enemy
execute as @s[team=uRed] if entity @a[team=uBlue,distance=..5.25] as @e[tag=CyborgZapGuy,type=marker,limit=1,sort=nearest] run tp @s ~ ~-.55 ~ facing entity @p[team=uBlue] eyes
execute as @s[team=uBlue] if entity @a[team=uRed,distance=..5.25] as @e[tag=CyborgZapGuy,type=marker,limit=1,sort=nearest] run tp @s ~ ~-.55 ~ facing entity @p[team=uRed] eyes

#raycast
execute at @e[tag=CyborgZapGuy,type=marker,limit=1,sort=nearest] run function under_pack:cyborg_functions/cyborg_zap_ray
execute at @s run playsound minecraft:entity.skeleton.shoot master @a ~ ~ ~ 0.3 1.8

#kill
kill @e[type=marker,tag=CyborgZapGuy]