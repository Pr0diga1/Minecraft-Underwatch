#advancement
advancement revoke @s only under_pack:shield
#buffer
scoreboard players set @s paladinIsBlocking 1

#delete potions
kill @e[type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:harming"}}},distance=..2]

#removing status from the shield
execute if score @s shieldStatus matches 1.. run scoreboard players remove @s shieldStatus 1

#if its at 0 remove the enchant
execute if score @s shieldStatus matches 0 run item replace entity @s weapon.offhand with shield{display:{Name:'{"text":"Piece of Driftwood"}'},HideFlags:1,Damage:336} 1