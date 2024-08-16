
#reset reset
scoreboard players reset @s reset

#damage arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{scientistDamage:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:0b}]}] run scoreboard players set @s scientistDamageReload 20
execute unless entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{scientistDamage:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:0b}]}] run item replace entity @s hotbar.0 with shears[custom_name='"Damage Dart Reloading"',damage=238,custom_model_data=2] 1
execute if score @s scientistDamageReload matches 1.. run function under_pack:scientist_functions/scientist_reload_damage

#healing arrow reload
execute unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{scientistHealing:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:1b}]}] run scoreboard players set @s scientistHealingReload 20
execute unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{scientistHealing:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:1b}]}] run item replace entity @s hotbar.1 with shears[custom_name='"Healing Dart Reloading"',damage=238,custom_model_data=2] 1
execute if score @s scientistHealingReload matches 1.. run function under_pack:scientist_functions/scientist_reload_healing

#lightning
execute unless entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{scientistLightning:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:2b}]}] run scoreboard players set @s ability2 240
execute unless entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{scientistLightning:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:2b}]}] run item replace entity @s hotbar.2 with shears[custom_name='"Electric Dart Reloading"',damage=238,custom_model_data=2] 1
execute if score @s ability2 matches 1.. run function under_pack:scientist_functions/scientist_reload_lightning

#rocket reload
execute unless entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{scientistRocket:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:3b}]}] run scoreboard players set @s ability3 240
execute unless entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{scientistRocket:1b}}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:shears"},{Slot:3b}]}] run item replace entity @s hotbar.3 with shears[custom_name='"Rocket Dart Reloading"',damage=238,custom_model_data=2] 1
execute if score @s ability3 matches 1.. run function under_pack:scientist_functions/scientist_reload_rocket


#remove damage from damage arrows
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:0}}}}] run data merge entity @s {damage:0.01d,crit:0b}

#handles noting which players have luck
execute as @a[team=uRed,nbt={active_effects:[{id:"minecraft:luck",amplifier:1b,duration:1}]}] run scoreboard players set @s hitByFreeze 25
execute as @a[team=uBlue,nbt={active_effects:[{id:"minecraft:luck",amplifier:1b,duration:1}]}] run scoreboard players set @s hitByFreeze 25

#run the freeze tick
execute if entity @a[scores={hitByFreeze=1..},limit=1] run schedule function under_pack:scientist_functions/scientist_tick_freeze 1t

#clear the freeze armor stands
execute unless entity @a[team=uRed,scores={hitByFreeze=1..}] run kill @e[type=marker,tag=sciFreeze,tag=red]
execute unless entity @a[team=uBlue,scores={hitByFreeze=1..}] run kill @e[type=marker,tag=sciFreeze,tag=blue]

#give healing arrows the correct team tags
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uRed] run tag @s add red
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uBlue] run tag @s add blue
#replace healing arrows
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16768256}}}}] run function under_pack:scientist_functions/scientist_clone_healing

#replace rocket arrows
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16711910}}}}] run function under_pack:scientist_functions/scientist_clone_movement
#rocket arrow particles
execute at @e[type=arrow,tag=sciMove] run particle dragon_breath ~ ~ ~ 0 0 0 0 1

#give team tags to lightning arrows
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uRed] run tag @s add red
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] at @s if entity @a[distance=..4,scores={class=9,scientistBowFired2=1..},team=uBlue] run tag @s add blue
#replace lightning arrows
execute as @e[type=arrow,nbt={item:{components:{"minecraft:potion_contents":{custom_color:16777215}}}}] run function under_pack:scientist_functions/scientist_clone_lightning

#kill all inground lightning arrows
kill @e[type=arrow,tag=sciBolt,nbt={inGround:1b}]

#tp markers to arrows every tick
tp @e[type=marker,tag=sciLightningRed] @e[type=arrow,tag=sciBoltl,tag=red,limit=1,sort=nearest]
tp @e[type=marker,tag=sciLightningBlue] @e[type=arrow,tag=sciBoltl,tag=blue,limit=1,sort=nearest]

#arrow particles
execute at @e[type=arrow,tag=sciBolt] run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 6

#summon a lightning bolt on a marker if its arrow is not there
#red
execute as @e[type=marker,tag=sciLightningRed] unless entity @e[type=arrow,tag=sciBoltl,tag=red] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=sciLightningRed] unless entity @e[type=arrow,tag=sciBoltl,tag=red] at @s run kill @s
#blue
execute as @e[type=marker,tag=sciLightningBlue] unless entity @e[type=arrow,tag=sciBoltl,tag=blue] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=marker,tag=sciLightningBlue] unless entity @e[type=arrow,tag=sciBoltl,tag=blue] at @s run kill @s

#reset the bow fired objective
scoreboard players set @s scientistBowFired2 0