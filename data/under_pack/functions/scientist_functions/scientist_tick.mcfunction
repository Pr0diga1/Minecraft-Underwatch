#carrot on stick listening
execute as @s[nbt={Inventory:[{Slot:4b,tag:{scientistPunch:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{scientistPunch:1b}}},scores={reset=1..}] if score @s ability3 matches 200.. run function under_pack:scientist_functions/scientist_punch
execute as @s[nbt={Inventory:[{Slot:8b,tag:{scientistSmoke:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{scientistSmoke:1b}}},scores={reset=1..}] run function under_pack:scientist_functions/scientist_ult

#reset reset
scoreboard players reset @s reset

#damage arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{scientistDamage:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:0b}]}] run scoreboard players set @s scientistDamageReload 25
execute unless entity @s[nbt={Inventory:[{Slot:0b,tag:{scientistDamage:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:0b}]}] run item replace entity @s hotbar.0 with leather_chestplate{Damage:80}
execute if score @s scientistDamageReload matches 1.. run function under_pack:scientist_functions/scientist_reload_damage

#healing arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{scientistHealing:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:1b}]}] run scoreboard players set @s scientistHealingReload 25
execute unless entity @s[nbt={Inventory:[{Slot:1b,tag:{scientistHealing:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:1b}]}] run item replace entity @s hotbar.1 with leather_chestplate{Damage:80}
execute if score @s scientistHealingReload matches 1.. run function under_pack:scientist_functions/scientist_reload_healing

#movement arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{scientistMovement:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:2b}]}] run scoreboard players set @s ability1 180
execute unless entity @s[nbt={Inventory:[{Slot:2b,tag:{scientistMovement:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:2b}]}] run item replace entity @s hotbar.2 with leather_chestplate{Damage:80}
execute if score @s ability1 matches 1.. run function under_pack:scientist_functions/scientist_reload_movement

#lightning
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{scientistLightning:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:3b}]}] run scoreboard players set @s ability2 240
execute unless entity @s[nbt={Inventory:[{Slot:3b,tag:{scientistLightning:1b}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"},{Slot:3b}]}] run item replace entity @s hotbar.3 with leather_chestplate{Damage:80}
execute if score @s ability2 matches 1.. run function under_pack:scientist_functions/scientist_reload_lightning

#remove damage from damage arrows
execute as @e[type=arrow,nbt={Color:0}] run data merge entity @s {damage:0.01d}

#give healing arrows the correct team tags
execute as @e[type=arrow,nbt={Color:16768256}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uRed] run tag @s add red
execute as @e[type=arrow,nbt={Color:16768256}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uBlue] run tag @s add blue
#replace healing arrows
execute as @e[type=arrow,nbt={Color:16768256}] run function under_pack:scientist_functions/scientist_clone_healing

#give team tags to movement arrows
execute as @e[type=arrow,nbt={Color:2327040}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uRed] run tag @s add red
execute as @e[type=arrow,nbt={Color:2327040}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uBlue] run tag @s add blue
#replace movement arrows
execute as @e[type=arrow,nbt={Color:2327040}] run function under_pack:scientist_functions/scientist_clone_movement

#give team tags to lightning arrows
execute as @e[type=arrow,nbt={Color:16777215}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uRed] run tag @s add red
execute as @e[type=arrow,nbt={Color:16777215}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uBlue] run tag @s add blue
#replace lightning arrows
execute as @e[type=arrow,nbt={Color:16777215}] run function under_pack:scientist_functions/scientist_clone_lightning

#kill all inground lightning arrows
kill @e[type=arrow,tag=sciBolt,nbt={inGround:1b}]

#tp markers to arrows every tick
tp @e[type=marker,tag=sciLightningRed] @e[type=arrow,tag=sciBolt,tag=red,limit=1,sort=nearest]
tp @e[type=marker,tag=sciLightningBlue] @e[type=arrow,tag=sciBolt,tag=blue,limit=1,sort=nearest]

#arrow particles
execute at @e[type=arrow,tag=sciBolt] run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 6

#summon a lightning bolt on a marker if its arrow is not there
#red
execute as @e[type=marker,tag=sciLightningRed] unless entity @e[type=arrow,tag=sciBolt,tag=red] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=sciLightningRed] unless entity @e[type=arrow,tag=sciBolt,tag=red] at @s run kill @s
#blue
execute as @e[type=marker,tag=sciLightningBlue] unless entity @e[type=arrow,tag=sciBolt,tag=blue] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=sciLightningBlue] unless entity @e[type=arrow,tag=sciBolt,tag=blue] at @s run kill @s

#if punch isn't active run the cooldown
execute if score @s scientistBowFired matches 2.. if score @s ability3 matches ..199 run function under_pack:scientist_functions/scientist_punch_cooldown

#ult charge
function under_pack:scientist_functions/scientist_ult_charge

#give team tags to ult arrows
execute as @e[type=arrow,nbt={Color:13311}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uRed] run tag @s add red
execute as @e[type=arrow,nbt={Color:13311}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uBlue] run tag @s add blue
#replace ult arrows
execute as @e[type=arrow,nbt={Color:13311}] run function under_pack:scientist_functions/scientist_clone_ult

#kill all inground ult arrows
kill @e[type=arrow,tag=sciSmoke,nbt={inGround:1b}]

#tp markers to ult arrows every tick
tp @e[type=marker,tag=sciSmokeRed] @e[type=arrow,tag=sciSmoke,tag=red,limit=1,sort=nearest]
tp @e[type=marker,tag=sciSmokeBlue] @e[type=arrow,tag=sciSmoke,tag=blue,limit=1,sort=nearest]

#ult arrow particles
execute at @e[type=arrow,tag=sciSmoke] run particle bubble_pop ~ ~ ~ 0.1 0.1 0.1 0 8

#ult arrow lands
#red
execute as @e[type=marker,tag=sciSmokeRed] unless entity @e[type=arrow,tag=sciSmoke,tag=red] at @s run function under_pack:scientist_functions/scientist_ult_red
execute as @e[type=marker,tag=sciSmokeRed] unless entity @e[type=arrow,tag=sciSmoke,tag=red] at @s run kill @s
#blue
execute as @e[type=marker,tag=sciSmokeBlue] unless entity @e[type=arrow,tag=sciSmoke,tag=blue] at @s run function under_pack:scientist_functions/scientist_ult_blue
execute as @e[type=marker,tag=sciSmokeBlue] unless entity @e[type=arrow,tag=sciSmoke,tag=blue] at @s run kill @s

#give normal bow
execute if score @s scientistBowFired matches 1 run function under_pack:scientist_functions/scientist_punch_end

#reset the bow fired objective
scoreboard players set @s scientistBowFired2 0