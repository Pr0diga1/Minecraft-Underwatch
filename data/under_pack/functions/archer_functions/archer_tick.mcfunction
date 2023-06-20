#carrot on stick
execute as @s[nbt={Inventory:[{Slot:2b,tag:{archerBackstep:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{archerBackstep:1b}}},scores={reset=1..}] if score @s ability3 matches 140.. run function under_pack:archer_functions/archer_backstep

#trigger backstep
execute as @s[team=uRed] as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680}}}] on origin as @s[team=uRed] run say hi
execute as @s[team=uBlue] as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionColor:16711680}}}] on origin as @s[team=uBlue] run say hi


#execute as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
#execute as @e[type=item] run data modify entity @s PickupDelay set value 0s
#execute as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s


#heavy arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stone_shovel"},{Slot:0b}]}] run scoreboard players set @s ability1 60
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{archerheavy:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stone_shovel"},{Slot:0b}]}] run item replace entity @s hotbar.0 with stone_shovel{CustomModelData:1,Damage:240}
execute if score @s ability1 matches 1.. run function under_pack:archer_functions/archer_heavy_reload
#heavy arrow damage
execute as @e[nbt={Color:16711680}] run data merge entity @s {damage:2.2d}

#light arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stone_shovel"},{Slot:1b}]}] run scoreboard players set @s ability2 60
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{archerlight:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:stone_shovel"},{Slot:1b}]}] run item replace entity @s hotbar.1 with stone_shovel{CustomModelData:1,Damage:240}
execute if score @s ability2 matches 1.. run function under_pack:archer_functions/archer_light_reload
#light arrow damage
execute as @e[nbt={Color:16719871}] run data merge entity @s {damage:0.7d}
execute as @e[nbt={Color:16719871}] run function under_pack:archer_functions/archer_light_speed

function under_pack:archer_functions/archer_cooldown