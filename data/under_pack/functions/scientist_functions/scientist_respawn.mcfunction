
#bow into offhand
item replace entity @s weapon.offhand with bow{CustomModelData:1,Unbreakable:1b}
#damage arrows
item replace entity @s hotbar.0 with tipped_arrow{CustomModelData:3,display:{Name:'{"text":"Damage Dart","color":"dark_red"}'},scientistDamage:1b,CustomPotionEffects:[{Id:20,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomPotionColor:0} 4
#healing arrows
item replace entity @s hotbar.1 with tipped_arrow{CustomModelData:4,display:{Name:'{"text":"Healing Dart","color":"yellow"}'},scientistHealing:1b,CustomPotionEffects:[{Id:10,Amplifier:4b,Duration:30,ShowParticles:0b}],CustomPotionColor:16768256} 4
#lightning dart
item replace entity @s hotbar.2 with tipped_arrow{CustomModelData:2,display:{Name:'{"text":"Electric Dart","color":"white"}'},scientistLightning:1b,CustomPotionEffects:[{Id:26,Amplifier:1b,Duration:1}],CustomPotionColor:16777215} 1
#Punch bow
item replace entity @s hotbar.3 with tipped_arrow{CustomModelData:1,display:{Name:'{"text":"Rocket Dart","color":"light_purple"}'},scientistRocket:1b,CustomPotionEffects:[{Id:25,Amplifier:4b,Duration:30}],CustomPotionColor:16711910} 1


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