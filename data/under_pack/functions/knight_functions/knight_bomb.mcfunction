#red
execute if entity @s[team=uRed] if entity @e[nbt={Item:{tag:{knightbomb:1b,red:1b}}}] unless entity @e[tag=knighttrack,tag=red] at @e[nbt={Item:{tag:{knightbomb:1b,red:1b}}},limit=1] run summon armor_stand ~ ~ ~ {Tags:["knighttrack","red"],Invisible:1b,Invulnerable:1b}
execute if entity @s[team=uRed] if entity @e[nbt={Item:{tag:{knightbomb:1b,red:1b}}}] at @e[nbt={Item:{tag:{knightbomb:1b,red:1b}}}] run tp @e[tag=knighttrack,tag=red] ~ ~ ~
execute if entity @s[team=uRed] if entity @e[tag=knighttrack,tag=red] unless entity @e[nbt={Item:{tag:{knightbomb:1b,red:1b}}}] at @e[tag=knighttrack,tag=red] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Silent:1b,Invulnerable:1b,Fuse:1,ignited:1b,Team:"uRed",CustomName:'{"text":"Evil Bombs!!!!"}'} 
execute if entity @s[team=uRed] if entity @e[tag=knighttrack,tag=red] unless entity @e[nbt={Item:{tag:{knightbomb:1b,red:1b}}}] run kill @e[tag=knighttrack,tag=red]

#blue
execute if entity @s[team=uBlue] if entity @e[nbt={Item:{tag:{knightbomb:1b,blue:1b}}}] unless entity @e[tag=knighttrack,tag=blue] at @e[nbt={Item:{tag:{knightbomb:1b,blue:1b}}},limit=1] run summon armor_stand ~ ~ ~ {Tags:["knighttrack","blue"],Invisible:1b,Invulnerable:1b}
execute if entity @s[team=uBlue] if entity @e[nbt={Item:{tag:{knightbomb:1b,blue:1b}}}] at @e[nbt={Item:{tag:{knightbomb:1b,blue:1b}}}] run tp @e[tag=knighttrack,tag=blue] ~ ~ ~
execute if entity @s[team=uBlue] if entity @e[tag=knighttrack,tag=blue] unless entity @e[nbt={Item:{tag:{knightbomb:1b,blue:1b}}}] at @e[tag=knighttrack,tag=blue] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Silent:1b,Invulnerable:1b,Fuse:1,ignited:1b,Team:"uBlue",CustomName:'{"text":"Evil Bombs!!!!"}'} 
execute if entity @s[team=uBlue] if entity @e[tag=knighttrack,tag=blue] unless entity @e[nbt={Item:{tag:{knightbomb:1b,blue:1b}}}] run kill @e[tag=knighttrack,tag=blue]


#detects when you use the bomb
execute if score @s knightbomb matches 1 run scoreboard players set @s ability1 0





