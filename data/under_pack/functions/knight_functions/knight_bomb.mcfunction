#red team bomb
execute if entity @s[team=uRed] as @e[type=snowball,limit=1,sort=nearest] unless entity @e[tag=knighttrack,tag=red] run data merge entity @s {Tags:["knightbomb","red"]}
execute if entity @s[team=uRed] if entity @e[tag=knightbomb,tag=red] unless entity @e[tag=knighttrack,tag=red] at @e[tag=knightbomb,tag=red] run summon minecraft:armor_stand ~ ~ ~ {Tags:["knighttrack","red"],Invisible:1b,Invulnerable:1b}
execute if entity @s[team=uRed] at @e[tag=knightbomb,tag=red] run tp @e[tag=knighttrack,tag=red] ~ ~ ~
execute if entity @s[team=uRed] if entity @e[tag=knighttrack,tag=red] unless entity @e[tag=knightbomb,tag=red] run effect give @a[team=uRed] resistance 1 5 true
execute if entity @s[team=uRed] if entity @e[tag=knighttrack,tag=red] unless entity @e[tag=knightbomb,tag=red] at @e[tag=knighttrack,tag=red] run summon fireball ~ ~ ~ {ExplosionPower:1b,power:[0.0,-10000.0,0.0]}
execute if entity @s[team=uRed] if entity @e[tag=knighttrack,tag=red] unless entity @e[tag=knightbomb,tag=red] run kill @e[tag=knighttrack,tag=red]
#blue team bomb
execute if entity @s[team=uBlue] as @e[type=snowball,limit=1,sort=nearest] unless entity @e[tag=knighttrack,tag=blue] run data merge entity @s {Tags:["knightbomb","blue"]}
execute if entity @s[team=uBlue] if entity @e[tag=knightbomb,tag=blue] unless entity @e[tag=knighttrack,tag=blue] at @e[tag=knightbomb,tag=blue] run summon minecraft:armor_stand ~ ~ ~ {Tags:["knighttrack","blue"],Invisible:1b,Invulnerable:1b}
execute if entity @s[team=uBlue] at @e[tag=knightbomb,tag=blue] run tp @e[tag=knighttrack,tag=blue] ~ ~ ~
execute if entity @s[team=uBlue] if entity @e[tag=knighttrack,tag=blue] unless entity @e[tag=knightbomb,tag=blue] run effect give @a[team=uBlue] resistance 1 5 true
execute if entity @s[team=uBlue] if entity @e[tag=knighttrack,tag=blue] unless entity @e[tag=knightbomb,tag=blue] at @e[tag=knighttrack,tag=blue] run summon fireball ~ ~ ~ {ExplosionPower:1b,power:[0.0,-100.0,0.0]}
execute if entity @s[team=uBlue] if entity @e[tag=knighttrack,tag=blue] unless entity @e[tag=knightbomb,tag=blue] run kill @e[tag=knighttrack,tag=blue]

#detects when you use the bomb
execute if entity @s[team=uBlue] if entity @e[tag=knighttrack,tag=blue] unless entity @e[tag=knightbomb,tag=blue] run scoreboard players set @s ability1 0
execute if entity @s[team=uRed] if entity @e[tag=knightbomb,tag=red] run scoreboard players set @s ability1 0





