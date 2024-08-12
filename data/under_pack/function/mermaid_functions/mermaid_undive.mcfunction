item replace entity @s armor.legs with diamond_leggings[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.feet with diamond_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"generic.explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":10}}] 1
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={show_in_tooltip:false}]
attribute @s generic.scale base set 1
attribute @s generic.jump_strength base set .42
attribute @s generic.attack_damage base set 1
item replace entity @s hotbar.3 with barrier[custom_name='{"text":"Dive on Cooldown"}'] 14
scoreboard players set @s ability4 280
playsound minecraft:ambient.underwater.exit master @a ~ ~ ~ 5 1