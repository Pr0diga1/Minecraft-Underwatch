#get the first bit of pos data
execute store result score WizardFireballX1 buffer run data get entity @s Pos[0] 1000
execute store result score WizardFireballY1 buffer run data get entity @s Pos[1] 1000
execute store result score WizardFireballZ1 buffer run data get entity @s Pos[2] 1000

#tp to second pos
tp @s ^ ^ ^1

#second bit of pos data
execute store result score WizardFireballX2 buffer run data get entity @s Pos[0] 1000
execute store result score WizardFireballY2 buffer run data get entity @s Pos[1] 1000
execute store result score WizardFireballZ2 buffer run data get entity @s Pos[2] 1000

#subtraction
scoreboard players operation WizardFireballX2 buffer -= WizardFireballX1 buffer 
scoreboard players operation WizardFireballY2 buffer -= WizardFireballY1 buffer 
scoreboard players operation WizardFireballZ2 buffer -= WizardFireballZ1 buffer 

#set the new power
execute store result entity @s power[0] double 0.0002 run scoreboard players get WizardFireballX2 buffer
execute store result entity @s power[1] double 0.0002 run scoreboard players get WizardFireballY2 buffer
execute store result entity @s power[2] double 0.0002 run scoreboard players get WizardFireballZ2 buffer

#set the owner
execute as @s[tag=redWizardFireball] run data modify entity @s Owner set from entity @p[team=uRed] UUID
execute as @s[tag=blueWizardFireball] run data modify entity @s Owner set from entity @p[team=uBlue] UUID

#only runs once
tag @s add fireballMoved