#tell frozen players they are stunned
execute as @s[scores={hitByFreeze=30}] run title @s title {"text":"Electricuted!","color":"yellow","bold":true,"italic":true}

#players who just got luck get a marker
execute at @s[scores={hitByFreeze=30}] run summon marker ~ ~ ~ {Tags:["sciFreeze","blue"]}

#players who are frozen get tpd
execute as @s[scores={hitByFreeze=1..}] at @e[type=marker,tag=sciFreeze,tag=blue,limit=1,sort=nearest] run tp @s ~ ~ ~

#particles
execute at @s run particle minecraft:electric_spark ~ ~.7 ~ .3 .5 .3 .001 30 force @a

#players no longer frozen hear a sound and have the title cleared
execute as @s[scores={hitByFreeze=1}] run title @s clear
execute as @s[scores={hitByFreeze=1}] at @s run playsound block.glass.break master @s

execute unless entity @s[gamemode=adventure] run scoreboard players set @s hitByFreeze 1

#iterate hitByFreeze down 1
scoreboard players remove @s hitByFreeze 1