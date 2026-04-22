#arrow particles
execute as @e[type=arrow,tag=Blue] at @s run function under_pack:scientist_functions/scientist_arrow_particle

#hit by lightning dart
execute as @a[team=uRed,nbt={active_effects:[{id:"minecraft:luck",amplifier:1b,duration:1}]}] run scoreboard players set @s hitByFreeze 30

#run the freeze tick
execute as @a[team=uRed,scores={hitByFreeze=1..}] run function under_pack:scientist_functions/scientist_tick_blue_freeze

#clear the freeze armor stands
execute unless entity @a[team=uRed,scores={hitByFreeze=1..}] as @e[type=marker,tag=sciFreeze,tag=blue] run kill @s

#kill all inground lightning arrows
kill @e[type=arrow,tag=Blue,tag=sciBolt,nbt={inGround:1b}]

#tp markers to arrows every tick
tp @e[type=marker,tag=sciLightningBlue] @e[type=arrow,tag=sciBoltl,tag=Blue,limit=1,sort=nearest]

#blue
execute as @e[type=marker,tag=sciLightningBlue] unless entity @e[type=arrow,tag=sciBoltl,tag=Blue] at @s run function under_pack:scientist_functions/scientist_lightning