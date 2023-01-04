#reset the bow fired
scoreboard players set @s scientistBowFired 0
#give punch bow
item replace entity @s weapon.offhand with bow{Unbreakable:1b,Enchantments:[{id:"minecraft:punch",lvl:4s}]}

#give new carrot on stick
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Rocket Dart","color":"gold"}',Lore:['{"text":"Right Click to strap a rocket motor on your next dart"}']},Damage:25,scientistPunch:1b} 1

#cooldown goes to 0
scoreboard players set @s ability3 0

#reset carrot on stick
scoreboard players reset @s reset