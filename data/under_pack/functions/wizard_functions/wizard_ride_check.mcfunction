#refill the fire
execute as @s[scores={ability5=0,wizardFireball=1..}] at @s run playsound minecraft:item.firecharge.use master @s ~ ~ ~
execute as @s[scores={ability5=0,wizardFireball=1..}] run scoreboard players set @s ability5 11
execute as @s[scores={ability5=11}] run scoreboard players remove @s wizardFireball 1
execute as @s[scores={ability5=11}] run scoreboard players set @s ability5 10

#run the riding
execute as @s[scores={ability5=0}] unless score @s wizardRide matches 0 run function under_pack:wizard_functions/wizard_ride
execute as @s[scores={ability5=1..}] run function under_pack:wizard_functions/wizard_ride

#run the stop
execute as @s[scores={ability5=..-1}] run function under_pack:wizard_functions/wizard_ride_stop