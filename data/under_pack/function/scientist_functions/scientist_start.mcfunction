clear @s

#give the team tag
execute as @s[team=uRed] run tag @s add red
execute as @s[team=uBlue] run tag @s add blue

#bow into offhand
item replace entity @s weapon.offhand with bow[unbreakable={show_in_tooltip:false},custom_model_data=1] 1
#damage arrows
item replace entity @s hotbar.0 with tipped_arrow[custom_name='{"color":"dark_red","text":"Damage Dart"}',custom_model_data=3,custom_data={scientistDamage:1b},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:40,show_particles:0b}]}] 2
#healing arrows
item replace entity @s hotbar.1 with tipped_arrow[custom_name='{"color":"yellow","text":"Healing Dart"}',custom_model_data=4,custom_data={scientistHealing:1b},potion_contents={custom_color:16768256,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:30,show_particles:0b}]}] 2
#lightning dart
item replace entity @s hotbar.2 with tipped_arrow[custom_name='{"color":"white","text":"Electric Dart"}',custom_model_data=2,custom_data={scientistLightning:1b},potion_contents={custom_color:16777215,custom_effects:[{id:"minecraft:slowness",amplifier:255,duration:30},{id:"minecraft:jump_boost",amplifier:127,duration:30}]}] 1
#Punch bow
#item replace entity @s hotbar.3 with tipped_arrow[custom_name='{"color":"light_purple","text":"Rocket Dart"}',custom_model_data=1,custom_data={scientistRocket:1b},potion_contents={custom_color:16711910,custom_effects:[{id:"minecraft:levitation",amplifier:4,duration:30}]}] 1

#scientist
item replace entity @s armor.feet with iron_boots[attribute_modifiers=[{id:"explosion_knockback_resistance",type:"generic.explosion_knockback_resistance",amount:-1.2,operation:"add_value",slot:"any"}],unbreakable={show_in_tooltip:false},enchantments={levels:{"minecraft:blast_protection":8,"minecraft:protection":2,"minecraft:depth_strider":2}}] 1
item replace entity @s armor.legs with diamond_leggings[unbreakable={show_in_tooltip:false}] 1
item replace entity @s armor.head with diamond_helmet[unbreakable={show_in_tooltip:false}]
item replace entity @s armor.chest with leather_chestplate[custom_name='"Jetpack"',unbreakable={show_in_tooltip:false},attribute_modifiers=[{id:"armor",type:"generic.armor",amount:0,operation:"add_value",slot:"chest"}],dyed_color=16777215] 1

#set things to 0
scoreboard players set @s scientistDamageReload 0
scoreboard players set @s scientistHealingReload 0
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0
scoreboard players set @s scientistBowFired 2
scoreboard players set @s scientistBowFired2 0


#run the class select
function under_pack:general_functions/general_character_select