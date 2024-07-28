# Gives cooldown Item
item replace entity @s hotbar.2 with barrier[custom_model_data=49] 5
scoreboard players set @s ability4 101

# Removes Damage From Arrow
data merge entity @e[limit=1,sort=nearest,nbt={item:{components:{"minecraft:custom_data":{roguedart:1b}}}}] {damage:0.75d,crit:0b}