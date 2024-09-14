#update thing's durability
item modify entity @s hotbar.0 under_pack:scientist/default_arrows

#iterate the timer
scoreboard players remove @s scientistDamageReload 1

#give new arrows when done
execute if score @s scientistDamageReload matches 0 run item replace entity @s hotbar.0 with tipped_arrow{CustomModelData:3,display:{Name:'{"text":"Damage Dart","color":"dark_red"}'},scientistDamage:1b,CustomPotionEffects:[{Id:20,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomPotionColor:0} 4
