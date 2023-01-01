clear @s

#give the team tag
execute as @s[team=uRed] run tag @s add red
execute as @s[team=uBlue] run tag @s add blue

#bow into offhand
item replace entity @s weapon.offhand with bow{Unbreakable:1b}
#damage arrows
item replace entity @s hotbar.0 with tipped_arrow{display:{Name:'{"text":"Damage Dart","color":"dark_red"}'},scientistDamage:1b,CustomPotionEffects:[{Id:20,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomPotionColor:0} 4
#healing arrows
item replace entity @s hotbar.1 with tipped_arrow{display:{Name:'{"text":"Healing Dart","color":"yellow"}'},scientistHealing:1b,CustomPotionEffects:[{Id:10,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomPotionColor:16768256} 4
#jump and speed arrow
item replace entity @s hotbar.2 with tipped_arrow{display:{Name:'{"text":"Movement Dart","color":"dark_green"}'},scientistMovement:1b,CustomPotionEffects:[{Id:1,Amplifier:4b,Duration:40},{Id:8,Amplifier:4b,Duration:40}],CustomPotionColor:2327040} 1
#lightning dart
item replace entity @s hotbar.3 with tipped_arrow{display:{Name:'{"text":"Electric Dart","color":"white"}'},scientistLightning:1b,CustomPotionColor:16777215} 1
#Punch bow
item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'{"text":"Rocket Dart","color":"gold"}',Lore:['{"text":"Right Click to strap a rocket motor on your next dart"}']},scientistPunch:1b} 1

#scientist
item replace entity @s armor.feet with golden_boots{Unbreakable:1b}
item replace entity @s armor.legs with iron_leggings{Unbreakable:1b}
item replace entity @s armor.chest with golden_chestplate{Unbreakable:1b}

#set things to 0
scoreboard players set @s scientistDamageReload 0
scoreboard players set @s scientistHealingReload 0
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 199
scoreboard players set @s scientistBowFired 2
scoreboard players set @s scientistBowFired2 0


#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#constants for ult charge
scoreboard players set scientistUltKills modifier 800
#ULT PERCENT IS ULT GOAL /100
scoreboard players set scientistUltPercent modifier 35
#goal is 3500
