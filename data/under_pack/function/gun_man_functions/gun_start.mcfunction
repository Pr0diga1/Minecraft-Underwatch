clear @s

item replace entity @s hotbar.0 with stone_hoe[consumable={consume_seconds:100000000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},custom_name='{"color":"gold","text":"Rifle"}',lore=['"gun"'],custom_data={gunrifle: true, gunreload:true}] 1
item replace entity @s hotbar.1 with iron_hoe[consumable={consume_seconds:100000000,animation:"block",sound:"block.note_block.bass",has_consume_particles:false},custom_name='{"color":"red","text":"Shotgun"}',lore=['"gun"'],custom_data={gunshot: true, gunreload:true}] 1

item replace entity @s armor.head with iron_helmet[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:false},dyed_color=1379478] 1
item replace entity @s armor.legs with golden_leggings[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.feet with iron_boots[unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:depth_strider":2}}] 1

scoreboard players set @s riflebuffer 0
scoreboard players set @s gunshotbuffer 0

function under_pack:general_functions/general_character_select

scoreboard players set @a ability1 8
experience set @s 8 levels














