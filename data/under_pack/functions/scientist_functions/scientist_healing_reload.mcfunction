#update thing's durability
item modify entity @s hotbar.1 under_pack:updamage

#iterate the timer
scoreboard players remove @s scientistHealingReload 1

#give new arrows when done
execute if score @s scientistHealingReload matches 0 run item replace entity @s hotbar.1 with tipped_arrow{display:{Name:'{"text":"Healing Dart","color":"yellow"}'},scientistHealing:1b,CustomPotionEffects:[{Id:10,Amplifier:3b,Duration:40,ShowParticles:0b}],CustomPotionColor:16768256} 4