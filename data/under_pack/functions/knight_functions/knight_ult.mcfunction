scoreboard players set @s reset 0

execute if entity @s[team=uRed] at @a[team=uRed] run particle minecraft:heart ~ ~ ~ .3 1 .3 1 30 force @a
execute if entity @s[team=uBlue] at @a[team=uBlue] run particle minecraft:heart ~ ~ ~ .3 1 .3 1 30 force @a

execute if entity @s[team=uRed] run effect give @a[team=uRed] instant_health 1 10 true
execute if entity @s[team=uBlue] run effect give @a[team=uBlue] instant_health 1 10 true

execute at @a run playsound minecraft:entity.allay.ambient_without_item master @a ~ ~ ~ 10 1

#reseting ult scoreboards
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#removes xp
experience set @s 0 levels
experience set @s 0 points

clear @s carrot_on_a_stick{knightult:1b}