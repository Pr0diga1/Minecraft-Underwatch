playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 1 1
playsound minecraft:item.mace.smash_ground master @a ~ ~ ~ 0.3 2
playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 0.5 0.1
execute anchored eyes run particle campfire_cosy_smoke ^ ^ ^0.5 0.1 0.1 0.1 0.01 10

scoreboard players set @s ability4 1
item replace entity @s inventory.0 with arrow
kill @n[type=arrow,limit=1]