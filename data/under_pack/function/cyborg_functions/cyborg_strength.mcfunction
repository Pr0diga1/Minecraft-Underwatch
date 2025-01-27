attribute @s minecraft:attack_damage base set 3.25
item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"color":"red","text":"Stength Module"}',custom_data={cyborgstrong:1b},enchantment_glint_override=true] 1
scoreboard players set @s cyborghp 120
scoreboard players add @s cyborgcap 40
experience add @s 40 levels