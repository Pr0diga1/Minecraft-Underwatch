# Gives cooldown Item
item replace entity @s hotbar.2 with barrier{CustomModelData:49} 5
scoreboard players set @s ability4 101

# Removes Damage From Arrow
data merge entity @e[limit=1,sort=nearest,type=arrow,nbt={Color:16777210}] {damage:0.01d,crit:0b}