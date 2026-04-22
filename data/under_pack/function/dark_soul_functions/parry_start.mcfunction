schedule function under_pack:dark_soul_functions/give_sword 1t
item replace entity @s hotbar.0 with oak_boat 1
item replace entity @s hotbar.0 with iron_sword[unbreakable={},minimum_attack_charge=1.0,swing_animation={duration:12,type:"whack"},attack_range={min_reach:0.0,max_reach:3,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5},attribute_modifiers=[{id:"dam",type:"attack_damage",amount:2,operation:"add_value"},{id:"speed",type:"attack_speed",amount:-2.5,operation:"add_value"}],consumable={consume_seconds:0,animation:"block",sound:"item.armor.equip_diamond",has_consume_particles:false},custom_data={zwei:true},custom_name={"bold":true,"color":"#8A8A8A","italic":false,"text":"Zweihänder","underlined":true},use_cooldown={seconds:5}] 1

scoreboard players set @s damageTaken 0
effect give @s resistance infinite 3 true

item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"}],dyed_color=15128132] 1
tag @s add parrying

advancement revoke @s only under_pack:dark_soul/sword_block