#arrow particles
execute as @e[type=arrow,tag=Red] at @s run function under_pack:scientist_functions/scientist_arrow_particle

#hit by lightning dart
execute as @a[team=uBlue,nbt={active_effects:[{id:"minecraft:luck",amplifier:1b,duration:1}]}] run scoreboard players set @s hitByFreeze 30

#run the freeze tick
execute as @a[team=uBlue,scores={hitByFreeze=1..}] run function under_pack:scientist_functions/scientist_tick_red_freeze

#clear the freeze armor stands
execute unless entity @a[team=uBlue,scores={hitByFreeze=1..}] as @e[type=marker,tag=sciFreeze,tag=red] run kill @s

#kill all inground lightning arrows
kill @e[type=arrow,tag=Red,tag=sciBolt,nbt={inGround:1b}]

#tp markers to arrows every tick
tp @e[type=marker,tag=sciLightningRed] @e[type=arrow,tag=sciBoltl,tag=Red,limit=1,sort=nearest]

#red
execute as @e[type=marker,tag=sciLightningRed] unless entity @e[type=arrow,tag=sciBoltl,tag=Red] at @s run function under_pack:scientist_functions/scientist_lightning