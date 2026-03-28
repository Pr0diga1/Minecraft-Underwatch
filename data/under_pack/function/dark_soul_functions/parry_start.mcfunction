schedule function under_pack:dark_soul_functions/give_sword 1t
item replace entity @s hotbar.0 with oak_boat 1
item replace entity @s hotbar.0 with iron_sword[unbreakable={},minimum_attack_charge=1.0,swing_animation={duration:12,type:"whack"},attack_range={min_reach:0.0,max_reach:2.5,min_creative_reach:0.0,max_creative_reach:5.0,hitbox_margin:0.5},attribute_modifiers=[{id:"dam",type:"attack_damage",amount:4,operation:"add_value"},{id:"speed",type:"attack_speed",amount:-1.7,operation:"add_value"}],consumable={consume_seconds:0,animation:"block",sound:"item.armor.equip_diamond",has_consume_particles:false},custom_data={zwei:true},custom_name={"bold":true,"color":"#8A8A8A","italic":false,"text":"Zweihänder","underlined":true},use_cooldown={seconds:10}] 1

scoreboard players set @s damageTaken 0
say hello

item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},attribute_modifiers=[{id:"scale",type:"scale",amount:0.3,operation:"add_value",slot:"any"},{id:"armor",type:"armor",amount:100,operation:"add_value"}],dyed_color=15128132,enchantments={"under_pack:dark_soul/parry":1}] 1
tag @s add parrying

advancement revoke @s only under_pack:dark_soul/sword_block