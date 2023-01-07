#clear slot
item replace entity @s hotbar.8 with air

#removes xp
experience set @s 9 levels
experience set @s 0 points

#effect
execute as @s[team=uRed] at @s run effect give @a[team=uRed,distance=..6] speed 1 2
execute as @s[team=uBlue] at @s run effect give @a[team=uBlue,distance=..6] speed 1 2

#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#ult
scoreboard players set @s paladinUltActive 1
scoreboard players set @s paladinUltTiming 180