#reset turreteye so the marker doesnt get exploded
scoreboard players set @s engineerTurretEye 0
#reset the ability cooldown
scoreboard players set @s ability7 261
execute if entity @s[team=uBlue] run effect give @a[team=uBlue,distance=..8] instant_health 3 0
execute if entity @s[team=uRed] run effect give @a[team=uRed,distance=..8] instant_health 3 0
execute if entity @s[team=uBlue] as @a[team=uRed,distance=..8] run damage @s 3.5 player_attack
execute if entity @s[team=uRed] as @a[team=uBlue,distance=..8] run damage @s 3.5 player_attack
particle flash{color:0xffffffff} ~ ~ ~ 1 1 1 10 25 normal @a
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 2