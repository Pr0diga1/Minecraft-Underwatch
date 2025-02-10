#summon marker
summon marker ~ ~ ~ {Tags:["CyborgZapGuy"]}
scoreboard players set hit cyborgtimer 0
scoreboard players set distance cyborgtimer 25

#marker facing nearest enemy
execute as @s[team=uRed] if entity @a[team=uBlue,distance=..6] as @e[tag=CyborgZapGuy,type=marker,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @p[team=uBlue]
execute as @s[team=uBlue] if entity @a[team=uRed,distance=..6] as @e[tag=CyborgZapGuy,type=marker,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @p[team=uRed]

#raycast
execute at @e[tag=CyborgZapGuy,type=marker,limit=1,sort=nearest] run function under_pack:cyborg_functions/cyborg_zap_ray
execute at @s run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~

#kill
kill @e[type=marker,tag=CyborgZapGuy]