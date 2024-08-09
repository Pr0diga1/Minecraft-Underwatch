#reset turreteye so the marker doesnt get exploded
scoreboard players set @s engineerTurretEye 0
#reset the ability cooldown
scoreboard players set @s ability7 300
execute if entity @s[team=uBlue] run effect give @a[team=uBlue,distance=..7] instant_health 1 1
execute if entity @s[team=uRed] run effect give @a[team=uRed,distance=..7] instant_health 1 1
execute if entity @s[team=uBlue] as @a[team=uRed,distance=..7] run damage @s 6 player_attack
execute if entity @s[team=uRed] as @a[team=uBlue,distance=..7] run damage @s 6 player_attack
particle flash ~ ~ ~ 1 1 1 10 25 normal @a
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 2