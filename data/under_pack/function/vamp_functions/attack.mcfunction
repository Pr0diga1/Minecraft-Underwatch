advancement revoke @s only under_pack:vamp/attack

#new shears
item replace entity @s hotbar.0 with shears[attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:999,operation:"add_value"}],piercing_weapon={deals_knockback:false,dismounts:false},swing_animation={type:"none"},attack_range={min_reach:0.0,max_reach:0,min_creative_reach:0.0,max_creative_reach:0,hitbox_margin:0},custom_name={"color":"dark_red","text":"Lacerate"},custom_data={vampAttack:true},consumable={consume_seconds:9999999,animation:"spear",sound:"entity.fox.bite",has_consume_particles:false},enchantments={"under_pack:vamp/lunge":1,"under_pack:vamp/leftclick":1},use_effects={speed_multiplier:1,can_sprint:true},enchantment_glint_override=false,item_model="mangrove_button"] 1

#experience
experience set @s 0 points
scoreboard players set @s ability8 0

#goodnight detection
execute if score @s vampattack matches 1.. run scoreboard players add @s vampgoodnight 1
execute if score @s vampattack matches 0 run scoreboard players set @s vampgoodnight 0

execute if score @s vampgoodnight matches 2 run return run function under_pack:vamp_functions/attack_goodnight

scoreboard players set @s vampattack 5

#attack
execute at @s[tag=vampLeft] run function under_pack:vamp_functions/attack_2

execute at @s[tag=!vampLeft] run function under_pack:vamp_functions/attack_4

execute as @s[tag=vampLeft] run return run tag @s remove vampLeft
tag @s add vampLeft