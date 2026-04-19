clear @s
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 239
scoreboard players set @s vampdetect -1
scoreboard players set @s vampattack 0
scoreboard players set @s vampgoodnight 0
scoreboard players set @s vampbite 0
scoreboard players set @s ability8 741

tag @s remove vampdashing

#item replace entity @s hotbar.0 with shears[custom_name={"color":"dark_red","text":"Lacerate"},custom_data={vampAttack:true},use_effects={speed_multiplier:1,can_sprint:true},consumable={consume_seconds:999999999,animation:"spear"},enchantments={"under_pack:vamp/lunge":1}] 1
item replace entity @s hotbar.1 with charcoal[consumable={consume_seconds:2,animation:"bow",sound:"entity.bat.loop",has_consume_particles:false},custom_data={vampbat:true},custom_name={"color":"black","text":"Become Bat"},unbreakable={}] 1
item replace entity @s[team=uRed] hotbar.2 with snowball[custom_data={vampbomb:1b,red:1b},custom_name={"color":"dark_red","text":"Blood Bomb"}] 1
item replace entity @s[team=uBlue] hotbar.2 with snowball[custom_data={vampbomb:1b,blue:1b},custom_name={"color":"dark_red","text":"Blood Bomb"}] 1

item replace entity @s hotbar.0 with shears[attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:999,operation:"add_value"}],piercing_weapon={deals_knockback:false,dismounts:false},swing_animation={type:"none"},attack_range={min_reach:0.0,max_reach:0,min_creative_reach:0.0,max_creative_reach:0,hitbox_margin:0},custom_name={"color":"dark_red","text":"Lacerate"},custom_data={vampAttack:true},consumable={consume_seconds:0.05,animation:"spear",sound:"ambient.underwater.loop",has_consume_particles:false},enchantment_glint_override=false,enchantments={"under_pack:vamp/lunge":1,"under_pack:vamp/leftclick":1},use_effects={speed_multiplier:1,can_sprint:true},item_model="weeping_vines"] 1

item replace entity @s armor.chest with leather_chestplate[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={},attribute_modifiers=[{id:"armor",type:"armor",amount:9,operation:"add_value",slot:"any"}]] 1
item replace entity @s armor.legs with leather_leggings[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={}] 1
item replace entity @s armor.feet with leather_boots[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},attribute_modifiers=[{id:"armor",type:"armor",amount:2,operation:"add_value",slot:"feet"},{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={},enchantments={"minecraft:blast_protection":8,"minecraft:depth_strider":2}] 1


function under_pack:general_functions/general_character_select

experience set @s 100 levels
experience set @s 741 points

#left
tag @s add vampLeft