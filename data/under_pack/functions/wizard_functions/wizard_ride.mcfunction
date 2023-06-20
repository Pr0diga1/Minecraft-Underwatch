#run the ride start if it is the first tick of the ride
execute if score @s wizardRide matches 0 run function under_pack:wizard_functions/wizard_ride_start

#iterate rider timer
scoreboard players remove @s ability5 1

#ride the chicken
execute at @s[team=uRed] run ride @s mount @e[type=chicken,tag=redWizardRiden,limit=1,sort=nearest]
execute at @s[team=uBlue] run ride @s mount @e[type=chicken,tag=blueWizardRiden,limit=1,sort=nearest]

#fire
execute at @s run particle minecraft:flame ^ ^.7 ^ .3 .6 .3 .12 10 force @a
execute at @s run particle minecraft:flame ^ ^.7 ^ .8 1 .8 .12 20 force @s

##Chicken Velo
#tp marker
execute at @s[team=uRed] run tp @e[type=marker,tag=redWizardMark,limit=1,sort=nearest] ~ ~ ~
execute at @s[team=uBlue] run tp @e[type=marker,tag=blueWizardMark,limit=1,sort=nearest] ~ ~ ~

#get the first bit of pos data
execute at @s store result score WizardRideX1 buffer run data get entity @s Pos[0] 1000
execute at @s store result score WizardRideY1 buffer run data get entity @s Pos[1] 1000
execute at @s store result score WizardRideZ1 buffer run data get entity @s Pos[2] 1000

#tp to second pos
execute at @s[team=uRed] run tp @e[type=marker,tag=redWizardMark,limit=1,sort=nearest] ^ ^ ^1
execute at @s[team=uBlue] run tp @e[type=marker,tag=blueWizardMark,limit=1,sort=nearest] ^ ^ ^1

#second bit of pos data
execute at @s[team=uRed] store result score WizardRideX2 buffer run data get entity @e[type=marker,tag=redWizardMark,limit=1,sort=nearest] Pos[0] 1000
execute at @s[team=uRed] store result score WizardRideY2 buffer run data get entity @e[type=marker,tag=redWizardMark,limit=1,sort=nearest] Pos[1] 1000
execute at @s[team=uRed] store result score WizardRideZ2 buffer run data get entity @e[type=marker,tag=redWizardMark,limit=1,sort=nearest] Pos[2] 1000
execute at @s[team=uBlue] store result score WizardRideX2 buffer run data get entity @e[type=marker,tag=blueWizardMark,limit=1,sort=nearest] Pos[0] 1000
execute at @s[team=uBlue] store result score WizardRideY2 buffer run data get entity @e[type=marker,tag=blueWizardMark,limit=1,sort=nearest] Pos[1] 1000
execute at @s[team=uBlue] store result score WizardRideZ2 buffer run data get entity @e[type=marker,tag=blueWizardMark,limit=1,sort=nearest] Pos[2] 1000

#subtraction
scoreboard players operation WizardRideX2 buffer -= WizardRideX1 buffer 
scoreboard players operation WizardRideY2 buffer -= WizardRideY1 buffer 
scoreboard players operation WizardRideZ2 buffer -= WizardRideZ1 buffer 

#set the new motion
execute at @s[team=uRed] store result entity @e[type=chicken,tag=redWizardRiden,limit=1,sort=nearest] Motion[0] double 0.0008 run scoreboard players get WizardRideX2 buffer
execute at @s[team=uRed] store result entity @e[type=chicken,tag=redWizardRiden,limit=1,sort=nearest] Motion[1] double 0.0008 run scoreboard players get WizardRideY2 buffer
execute at @s[team=uRed] store result entity @e[type=chicken,tag=redWizardRiden,limit=1,sort=nearest] Motion[2] double 0.0008 run scoreboard players get WizardRideZ2 buffer
execute at @s[team=uBlue] store result entity @e[type=chicken,tag=blueWizardRiden,limit=1,sort=nearest] Motion[0] double 0.0008 run scoreboard players get WizardRideX2 buffer
execute at @s[team=uBlue] store result entity @e[type=chicken,tag=blueWizardRiden,limit=1,sort=nearest] Motion[1] double 0.0008 run scoreboard players get WizardRideY2 buffer
execute at @s[team=uBlue] store result entity @e[type=chicken,tag=blueWizardRiden,limit=1,sort=nearest] Motion[2] double 0.0008 run scoreboard players get WizardRideZ2 buffer
##Chicken Velo end


#set wizardRide to 2 to indicate that the ride is ongoing
scoreboard players set @s wizardRide 2