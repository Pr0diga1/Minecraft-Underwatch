## Player reset
clear @s
# Reset death scoreboard
scoreboard players reset @a uDeaths

## Main weapon
item replace entity @s hotbar.0 with iron_sword[unbreakable={},minimum_attack_charge=1.0,swing_animation={duration:12,type:"whack"},attack_range={min_reach:0.0,max_reach:2.5,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5},attribute_modifiers=[{id:"dam",type:"attack_damage",amount:4,operation:"add_value"},{id:"speed",type:"attack_speed",amount:-1.7,operation:"add_value"}],consumable={consume_seconds:0,animation:"block",sound:"item.armor.equip_diamond",has_consume_particles:false},custom_data={zwei:true},custom_name={"bold":true,"color":"#8A8A8A","italic":false,"text":"Zweihänder","underlined":true},use_cooldown={seconds:10}] 1

# Lingering Flame
item replace entity @s hotbar.1 with blaze_rod[consumable={consume_seconds:1,animation:"spear",sound:"block.blastfurnace.fire_crackle",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.ender_dragon.flap"}]},custom_data={lingering:true},custom_name={"bold":true,"color":"#FF8519","italic":false,"text":"Lingering Flame"}] 1

# Power within
item replace entity @s hotbar.2 with open_eyeblossom[consumable={consume_seconds:3,animation:"bow",sound:"block.amethyst_block.resonate",has_consume_particles:false,on_consume_effects:[{type:"minecraft:play_sound",sound:"entity.blaze.death"}]},custom_data={power:true},custom_name={"bold":true,"color":"#730A0A","italic":false,"text":"Power Within"}] 1

# Abilities
scoreboard players reset @s ability1
scoreboard players set @s ability2 0
scoreboard players reset @s ability3
scoreboard players set @s damageTaken 0

# Armor
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2},attribute_modifiers=[{id:"armor",type:"armor",amount:8,operation:"add_value"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],dyed_color=15128132] 1
item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=15128132] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"}],dyed_color=15128132] 1

# Set Experience
experience set @s 0 points
experience set @s 100 levels