clear @s

#give the team tag
execute as @s[team=uRed] run tag @s add red
execute as @s[team=uBlue] run tag @s add blue

#bow into offhand
item replace entity @s weapon.offhand with bow{Unbreakable:1b}
#damage arrows
item replace entity @s hotbar.0 with tipped_arrow{CustomModelData:3,display:{Name:'{"text":"Damage Dart","color":"dark_red"}'},scientistDamage:1b,CustomPotionEffects:[{Id:20,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomPotionColor:0} 4
#healing arrows
item replace entity @s hotbar.1 with tipped_arrow{CustomModelData:4,display:{Name:'{"text":"Healing Dart","color":"yellow"}'},scientistHealing:1b,CustomPotionEffects:[{Id:10,Amplifier:4b,Duration:30,ShowParticles:0b}],CustomPotionColor:16768256} 4
#lightning dart
item replace entity @s hotbar.2 with tipped_arrow{CustomModelData:2,display:{Name:'{"text":"Electric Dart","color":"white"}'},scientistLightning:1b,CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:1}],CustomPotionColor:16777215} 1
#Punch bow
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Rocket Dart","color":"gold"}',Lore:['{"text":"Right Click to strap a rocket motor on your next dart"}']},scientistPunch:1b,CustomModelData:32} 1

#scientist
item replace entity @s armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:depth_strider",lvl:2s},{id:"minecraft:blast_protection",lvl:13s}]}
item replace entity @s armor.legs with diamond_leggings{Unbreakable:1b}
item replace entity @s armor.head with diamond_helmet{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Jetpack"}',color:16777215},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1859217092,-39565814,-1219173781,-1415052210],Slot:"chest"}]} 1

#set things to 0
scoreboard players set @s scientistDamageReload 0
scoreboard players set @s scientistHealingReload 0
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 199
scoreboard players set @s scientistBowFired 2
scoreboard players set @s scientistBowFired2 0


#run the class select
function under_pack:general_functions/general_character_select