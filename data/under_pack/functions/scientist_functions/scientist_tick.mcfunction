#carrot on stick listening

#damage arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{scientistDamage:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:0b}]}] run scoreboard players set @s scientistDamageReload 25
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{scientistDamage:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:0b}]}] run item replace entity @s hotbar.0 with leather_chestplate{Damage:80}
execute if score @s scientistDamageReload matches 1.. run function under_pack:scientist_functions/scientist_damage_reload

#healing arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{scientistHealing:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:1b}]}] run scoreboard players set @s scientistHealingReload 25
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{scientistHealing:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:1b}]}] run item replace entity @s hotbar.1 with leather_chestplate{Damage:80}
execute if score @s scientistHealingReload matches 1.. run function under_pack:scientist_functions/scientist_healing_reload

#remove damage from all arrows
execute as @e[type=arrow,nbt={Color:0}] run data merge entity @s {damage:0.01d,crit:0b}
execute as @e[type=arrow,nbt={Color:16768256}] run data merge entity @s {damage:20d,crit:0b}


execute as @s[team=uRed] as @e[type=arrow,nbt={Color:16768256}] run data merge entity @s {Owner:[I;201,201,201,201]}
execute as @s[team=uBlue] as @e[type=arrow,nbt={Color:16768256}] run data merge entity @s {Owner:[I;202,202,202,202]}