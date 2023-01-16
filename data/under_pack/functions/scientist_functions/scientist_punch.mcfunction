#reset the bow fired
scoreboard players set @s scientistBowFired 0
#give punch bow
item replace entity @s weapon.offhand with bow{Unbreakable:1b,Enchantments:[{id:"minecraft:punch",lvl:4s}]}

#give arrow
item replace entity @s hotbar.3 with tipped_arrow{CustomModelData:1,display:{Name:'{"text":"Rocket Dart","color":"light_purple"}'},scientistRocket:1b,CustomPotionEffects:[{Id:25,Amplifier:4b,Duration:30}],CustomPotionColor:16711910} 1

#cooldown goes to 0
scoreboard players set @s ability3 0

#reset carrot on stick
scoreboard players reset @s reset