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
#set things to 0
scoreboard players set @s scientistDamageReload 0