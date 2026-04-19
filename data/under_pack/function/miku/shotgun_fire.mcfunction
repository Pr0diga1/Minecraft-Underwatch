playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 1
playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 0.3 2
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.5 0.1
execute anchored eyes run particle campfire_cosy_smoke ^ ^ ^0.5 0.1 0.1 0.1 0.01 10

execute anchored eyes positioned ^ ^ ^1.5 positioned ~-1.5 ~-1.5 ~-1.5 if entity @s[team=uBlue] as @a[team=uRed,dx=3,dy=3,dz=3] run damage @s 4 arrow by @p[team=uBlue,scores={class=14}]
execute anchored eyes positioned ^ ^ ^1.5 positioned ~-1.5 ~-1.5 ~-1.5 if entity @s[team=uRed] as @a[team=uBlue,dx=3,dy=3,dz=3] run damage @s 4 arrow by @p[team=uRed,scores={class=14}]


scoreboard players set @s ability4 180
kill @n[type=arrow,limit=1]

item replace entity @s hotbar.2 with barrier
scoreboard players set @s ability3 0