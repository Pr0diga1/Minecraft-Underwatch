scoreboard players set @s vampdetect -1
scoreboard players set @s vampattack 0
scoreboard players set @s vampgoodnight 0
scoreboard players set @s vampbite 0
scoreboard players set @s ability3 239
execute if entity @s[team=uRed] run kill @e[tag=vampguy,tag=red]
execute if entity @s[team=uRed] run kill @e[tag=vamplode,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=vampguy,tag=blue]
execute if entity @s[team=uBlue] run kill @e[tag=vamplode,tag=blue]

experience set @s 100 levels
experience set @s 741 points
scoreboard players set @s ability8 741
item replace entity @s hotbar.0 with shears[attribute_modifiers=[{id:"attack_speed",type:"attack_speed",amount:999,operation:"add_value"}],piercing_weapon={deals_knockback:false,dismounts:false},swing_animation={type:"none"},attack_range={min_reach:0.0,max_reach:0,min_creative_reach:0.0,max_creative_reach:0,hitbox_margin:0},custom_name={"color":"dark_red","text":"Lacerate"},custom_data={vampAttack:true},consumable={consume_seconds:0.05,animation:"spear",sound:"entity.fox.bite",has_consume_particles:false},enchantment_glint_override=false,enchantments={"under_pack:vamp/lunge":1,"under_pack:vamp/leftclick":1},use_effects={speed_multiplier:1,can_sprint:true},item_model="weeping_vines"] 1

execute as @s[team=uBlue] run tag @a[team=uRed] remove vampredimmune
execute as @s[team=uRed] run tag @a[team=uBlue] remove vampblueimmune

tag @s add vampLeft
tag @s remove vampdashing