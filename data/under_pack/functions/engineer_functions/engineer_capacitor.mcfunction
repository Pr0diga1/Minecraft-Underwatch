execute if entity @s[team=uRed] run tag @a[distance=..5,team=uBlue] add capped
execute if entity @s[team=uRed] at @a[tag=capped,team=uBlue] run summon marker ~ ~ ~ {Tags:["enginecap","red"]}
execute if entity @s[team=uRed] at @a[tag=capped,team=uBlue] run summon fireball ~ ~1.5 ~ {power:[0.0,-100.0,0.0]}

execute if entity @s[team=uBlue] run tag @a[distance=..5,team=uRed] add capped
execute if entity @s[team=uBlue] at @a[tag=capped,team=uRed] run summon marker ~ ~ ~ {Tags:["enginecap","blue"]}
execute if entity @s[team=uBlue] at @a[tag=capped,team=uRed] run summon fireball ~ ~1.5 ~ {power:[0.0,-100.0,0.0]}

scoreboard players set @s movement 10
scoreboard players set @s engineercap 0