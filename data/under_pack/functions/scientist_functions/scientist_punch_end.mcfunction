#remove bow
item replace entity @s weapon.offhand with bow{Unbreakable:1b}
#give new carrot on stick
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Rocket Dart","color":"gold"}',Lore:['{"text":"Right Click to strap a rocket motor on your next dart"}']},CustomModelData:33,scientistPunch:1b} 1
#set bow fired to 2
scoreboard players set @s scientistBowFired 2