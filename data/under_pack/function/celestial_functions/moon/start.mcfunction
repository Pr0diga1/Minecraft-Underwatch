clear @s
item replace entity @s[team=uRed] hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,red:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}'] 1
item replace entity @s[team=uBlue] hotbar.0 with snowball[custom_data={celeswap:1b,celedrop:1b,blue:1b},custom_name='{"color":"dark_blue","text":"Lunar Drop"}'] 1

item replace entity @s[team=uRed] hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b,red:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1
item replace entity @s[team=uRed] hotbar.2 with heart_of_the_sea[consumable={consume_seconds:100000000,animation:"bow",sound:"block.note_block.bass",has_consume_particles:false},custom_data={celeswap:1b, celetidal:true,red:1b},custom_name='{"color":"dark_purple","text":"Tidal Pull"}',unbreakable={}] 1

item replace entity @s[team=uBlue] hotbar.1 with carrot_on_a_stick[custom_data={celeswap:1b, celefull:1b,blue:1b},custom_name='{"color":"gray","text":"Full Moon"}',unbreakable={}] 1
item replace entity @s[team=uBlue] hotbar.2 with heart_of_the_sea[consumable={consume_seconds:100000000,animation:"bow",sound:"block.note_block.bass",has_consume_particles:false},custom_data={celeswap:1b, celetidal:true,blue:1b},custom_name='{"color":"dark_purple","text":"Tidal Pull"}',unbreakable={}] 1

item replace entity @s armor.head with leather_helmet[unbreakable={},dyed_color=16777215]
item replace entity @s armor.chest with leather_chestplate[unbreakable={},dyed_color=16777215]
item replace entity @s armor.legs with leather_leggings[unbreakable={},dyed_color=16777215]
item replace entity @s armor.feet with golden_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"},{id:"max_health",type:"max_health",amount:-2,operation:"add_value"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:depth_strider":2}}]

attribute @s scale base set 1


experience set @s 100 levels
experience set @s 741 points
scoreboard players set @s ability3 0
scoreboard players set @s ability7 0


effect give @s minecraft:instant_health 1 1
