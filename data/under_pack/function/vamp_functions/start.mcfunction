clear @s
experience set @s 100 levels
experience set @s 0 points
scoreboard players reset @s vampblood
scoreboard players set @s ability1 0
scoreboard players set @s vampdetect -1
scoreboard players set @s vampattack 0
scoreboard players set @s vampattackbuffer 0

item replace entity @s hotbar.0 with shears[custom_name={"color":"dark_red","text":"Lacerate"},custom_data={vampAttack:true},use_effects={speed_multiplier:0.5,can_sprint:false},consumable={consume_seconds:999999999,animation:"spear"},enchantments={"under_pack:vamp/lunge":1}] 1
item replace entity @s hotbar.1 with ghast_tear[custom_name='{"text":"Tainted Fangs","color":"red"}',custom_data={vamptaint:1b}]
item replace entity @s hotbar.2 with ender_eye[custom_name='{"text":"Slorp","color":"dark_red"}',custom_data={vampsuck:1b}]
item replace entity @s hotbar.3 with ender_eye[custom_name='{"text":"Become Bat","color":"black"}',custom_data={vampbat:1b}]

item replace entity @s armor.chest with leather_chestplate[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:0,operation:"add_value",slot:"any"}]] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},attribute_modifiers=[{id:"armor",type:"armor",amount:9,operation:"add_value",slot:"any"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2}] 1