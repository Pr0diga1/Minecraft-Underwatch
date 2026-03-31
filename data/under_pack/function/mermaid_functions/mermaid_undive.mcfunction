item replace entity @s armor.legs with diamond_leggings[unbreakable={}] 1
item replace entity @s armor.feet with diamond_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":10}] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=365567] 1
attribute @s scale base set 1
attribute @s jump_strength base set .42
attribute @s attack_damage base set 1
item replace entity @s hotbar.2 with barrier[custom_name={"text":"Dive on Cooldown"}] 11
scoreboard players set @s ability4 220
playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 5 1