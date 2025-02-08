# Give inventory
clear @s

## Main weapon
item replace entity @s hotbar.0 with iron_sword[custom_name='{"bold":true,"color":"#FF4912","italic":false,"text":"Chaos Zweihänder","underlined":true}',unbreakable={show_in_tooltip:false},custom_data={zwei:true},attribute_modifiers={modifiers:[{id:"armor",type:"attack_damage",amount:-1,operation:"add_value",slot:"mainhand"},{id:"attack_cooldown",type:"attack_speed",amount:-3,operation:"add_value",slot:"mainhand"},{id:"entity_interaction_range",type:"entity_interaction_range",amount:1.5,operation:"add_value",slot:"mainhand"}],show_in_tooltip:true},consumable={consume_seconds:10000,animation:"crossbow",has_consume_particles:true}] 1

# Abilities
scoreboard players reset @s ability1
scoreboard players reset @s ability2
scoreboard players set @s ability3 0
scoreboard players reset @s ability4
scoreboard players reset @s ultKills

item replace entity @s hotbar.1 with ender_eye[custom_name='{"bold":true,"color":"gold","italic":false,"text":"Estus Flask"}',custom_data={estus:1b}] 3
item replace entity @s hotbar.2 with blaze_rod[consumable={consume_seconds:0,animation:"spear",sound:"block.blastfurnace.fire_crackle",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.ender_dragon.flap"}]},custom_data={lingering:true},use_cooldown={seconds:2},custom_name='{"bold":true,"color":"#FF8519","italic":false,"text":"Lingering Flame"}'] 2
item replace entity @s hotbar.3 with blaze_powder[consumable={consume_seconds:1,animation:"bow",sound:"block.blastfurnace.fire_crackle",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"item.firecharge.use"}]},custom_data={immolation:true},use_cooldown={seconds:5},custom_name='{"bold":true,"color":"#FF8519","italic":false,"text":"Immolation"}'] 3

# Armor
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}},attribute_modifiers=[{id:"armor",type:"armor",amount:8,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],dyed_color=15128132] 1
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"armor",type:"max_health",amount:4,operation:"add_value"}],dyed_color=15128132] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"}],dyed_color=15128132] 1
# Run the class select
function under_pack:general_functions/general_character_select