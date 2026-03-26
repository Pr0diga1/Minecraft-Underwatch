
#bow into offhand
item replace entity @s weapon.offhand with bow[unbreakable={}] 1
#damage arrows
item replace entity @s hotbar.0 with tipped_arrow[custom_name={"color":"dark_red","text":"Damage Dart"},custom_data={scientistDamage:1b},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:40,show_particles:0b}]}] 2
#healing arrows
item replace entity @s hotbar.1 with tipped_arrow[custom_name={"color":"yellow","text":"Healing Dart"},custom_data={scientistHealing:1b},potion_contents={custom_color:16768256,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:30,show_particles:0b}]}] 2
#lightning dart
item replace entity @s hotbar.2 with tipped_arrow[custom_name={"color":"white","text":"Electric Dart"},custom_data={scientistLightning:1b},potion_contents={custom_color:16777215,custom_effects:[{id:"minecraft:slowness",amplifier:255,duration:30},{id:"minecraft:jump_boost",amplifier:127,duration:30}]}] 1
#Punch bow


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