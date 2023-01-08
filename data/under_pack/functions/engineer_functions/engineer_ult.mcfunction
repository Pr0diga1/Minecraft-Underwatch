scoreboard players reset @s reset 

#red
execute if entity @s[team=uRed] if score @s engineer_ult matches 0 run scoreboard players set @s engineer_ult 101
execute if entity @s[team=uRed] if score @s engineer_ult matches 100..101 run scoreboard players remove @s engineer_ult 1
execute if entity @s[team=uRed] if score @s engineer_ult matches 100 at @e[nbt={Item:{tag:{enginegrav:1b,red:1b}}}] unless entity @e[tag=enginehole,tag=red] run summon marker ~ ~ ~ {Tags:["enginehole","red"]}
execute if entity @s[team=uRed] run tp @e[tag=enginehole,tag=red] @e[nbt={Item:{tag:{enginegrav:1b,red:1b}}},limit=1,sort=nearest]
execute if entity @s[team=uRed] if entity @e[tag=enginehole,tag=red] unless entity @e[nbt={Item:{tag:{enginegrav:1b,red:1b}}}] unless score @s engineer_ult matches ..1 run scoreboard players remove @s engineer_ult 1
execute if entity @s[team=uRed] if score @s engineer_ult matches 1..98 at @e[tag=enginehole,tag=red] run particle minecraft:ambient_entity_effect ~ ~ ~ 1 1 1 100 100
execute if entity @s[team=uRed] at @e[tag=enginehole,tag=red] if score @s engineer_ult matches 1..98 as @a[distance=..4,team=uBlue] run tag @s add graved
execute if entity @s[team=uRed] if score @s engineer_ult matches 1..98 as @a[tag=graved,team=uBlue] at @s facing entity @e[tag=enginehole,tag=red,limit=1] eyes run tp @s ^ ^ ^0.25
execute if entity @s[team=uRed] if score @s engineer_ult matches 1 run tag @a[team=uBlue] remove graved
execute if entity @s[team=uRed] if score @s engineer_ult matches 1 run kill @e[tag=enginehole,tag=red]
execute if entity @s[team=uRed] if score @s engineer_ult matches 1 run scoreboard players set @s engineer_ult 0

#blue
execute if entity @s[team=uBlue] if score @s engineer_ult matches 0 run scoreboard players set @s engineer_ult 101
execute if entity @s[team=uBlue] if score @s engineer_ult matches 100..101 run scoreboard players remove @s engineer_ult 1
execute if entity @s[team=uBlue] if score @s engineer_ult matches 100 at @e[nbt={Item:{tag:{enginegrav:1b,blue:1b}}}] unless entity @e[tag=enginehole,tag=blue] run summon marker ~ ~ ~ {Tags:["enginehole","blue"]}
execute if entity @s[team=uBlue] run tp @e[tag=enginehole,tag=blue] @e[nbt={Item:{tag:{enginegrav:1b,blue:1b}}},limit=1,sort=nearest]
execute if entity @s[team=uBlue] if entity @e[tag=enginehole,tag=blue] unless entity @e[nbt={Item:{tag:{enginegrav:1b,blue:1b}}}] unless score @s engineer_ult matches ..1 run scoreboard players remove @s engineer_ult 1
execute if entity @s[team=uBlue] if score @s engineer_ult matches 1..98 at @e[tag=enginehole,tag=blue] run particle minecraft:ambient_entity_effect ~ ~ ~ 1 1 1 100 100
execute if entity @s[team=uBlue] at @e[tag=enginehole,tag=blue] if score @s engineer_ult matches 1..98 as @a[distance=..4,team=uRed] run tag @s add graved
execute if entity @s[team=uBlue] if score @s engineer_ult matches 1..98 as @a[tag=graved,team=uRed] at @s facing entity @e[tag=enginehole,tag=blue,limit=1] eyes run tp @s ^ ^ ^0.25
execute if entity @s[team=uBlue] if score @s engineer_ult matches 1 run tag @a[team=uRed] remove graved
execute if entity @s[team=uBlue] if score @s engineer_ult matches 1 run kill @e[tag=enginehole,tag=blue]
execute if entity @s[team=uBlue] if score @s engineer_ult matches 1 run scoreboard players set @s engineer_ult 0

#reseting ult scoreboards
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0

#removes xp
experience set @s 0 levels
experience set @s 0 points

