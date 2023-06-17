#get the first bit of pos data
execute store result score WizardRideX1 buffer run data get entity @s Pos[0] 1000
execute store result score WizardRideY1 buffer run data get entity @s Pos[1] 1000
execute store result score WizardRideZ1 buffer run data get entity @s Pos[2] 1000

#tp to second pos
tp @s ^ ^ ^1

#second bit of pos data
execute store result score WizardRideX2 buffer run data get entity @s Pos[0] 1000
execute store result score WizardRideY2 buffer run data get entity @s Pos[1] 1000
execute store result score WizardRideZ2 buffer run data get entity @s Pos[2] 1000

#subtraction
scoreboard players operation WizardRideX2 buffer -= WizardRideX1 buffer 
scoreboard players operation WizardRideY2 buffer -= WizardRideY1 buffer 
scoreboard players operation WizardRideZ2 buffer -= WizardRideZ1 buffer 

#set the new power
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get WizardRideX2 buffer
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get WizardRideY2 buffer
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get WizardRideZ2 buffer

#set the owner
execute as @s[tag=redWizardRide] at @s run data modify entity @s Owner set from entity @p[team=uRed] UUID
execute as @s[tag=blueWizardRide] at @s run data modify entity @s Owner set from entity @p[team=uBlue] UUID