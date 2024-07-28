
#bow into offhand
item replace entity @s weapon.offhand with bow[unbreakable={show_in_tooltip:false},custom_model_data=1] 1
#damage arrows
item replace entity @s hotbar.0 with tipped_arrow[custom_name='{"color":"dark_red","text":"Damage Dart"}',custom_model_data=3,custom_data={scientistDamage:1b},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:40,show_particles:0b}]}] 4
#healing arrows
item replace entity @s hotbar.1 with tipped_arrow[custom_name='{"color":"yellow","text":"Healing Dart"}',custom_model_data=4,custom_data={scientistHealing:1b},potion_contents={custom_color:16768256,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:30,show_particles:0b}]}] 4
#lightning dart
item replace entity @s hotbar.2 with tipped_arrow[custom_name='{"color":"white","text":"Electric Dart"}',custom_model_data=2,custom_data={scientistLightning:1b},potion_contents={custom_color:16777215,custom_effects:[{id:"minecraft:slowness",amplifier:255,duration:30},{id:"minecraft:jump_boost",amplifier:127,duration:30}]}] 1
#Punch bow
item replace entity @s hotbar.3 with tipped_arrow[custom_name='{"color":"light_purple","text":"Rocket Dart"}',custom_model_data=1,custom_data={scientistRocket:1b},potion_contents={custom_color:16711910,custom_effects:[{id:"minecraft:levitation",amplifier:4,duration:30}]}] 1


#set things to 0
scoreboard players set @s scientistDamageReload 0
scoreboard players set @s scientistHealingReload 0
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0
scoreboard players set @s scientistBowFired 2

#unfreeze people
execute as @s[team=uBlue] as @a[team=uRed] run scoreboard players set @s hitByFreeze 0
execute as @s[team=uRed] as @a[team=uBlue] run scoreboard players set @s hitByFreeze 0