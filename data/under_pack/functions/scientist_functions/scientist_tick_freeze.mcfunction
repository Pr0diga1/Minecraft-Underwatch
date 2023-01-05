#tell frozen players they are stunned
execute as @a[scores={hitByFreeze=25}] run title @s title {"text":"Electricuted!","color":"yellow","bold":true,"italic":true}

#players who just got luck get a marker
execute as @a[team=uRed,scores={hitByFreeze=25}] at @s run summon marker ~ ~ ~ {Tags:["sciFreeze","red"]}
execute as @a[team=uBlue,scores={hitByFreeze=25}] at @s run summon marker ~ ~ ~ {Tags:["sciFreeze","blue"]}

#players who just got luck get a facing marker
execute as @a[team=uRed,scores={hitByFreeze=25}] at @s run summon marker ^ ^ ^100 {Tags:["sciFreezeLook","red"]}
execute as @a[team=uBlue,scores={hitByFreeze=25}] at @s run summon marker ^ ^ ^100 {Tags:["sciFreezeLook","blue"]}

#change markers direction
execute if entity @a[team=uRed,scores={hitByFreeze=25}] as @e[type=marker,tag=sciFreeze,tag=red] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=sciFreezeLook,tag=red,limit=1,sort=nearest]
execute if entity @a[team=uBlue,scores={hitByFreeze=25}] as @e[type=marker,tag=sciFreeze,tag=blue] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=sciFreezeLook,tag=blue,limit=1,sort=nearest]

#players who are frozen get tp'd
execute as @a[team=uRed,scores={hitByFreeze=1..}] run tp @s @e[type=marker,tag=sciFreeze,tag=red,limit=1,sort=nearest]
execute as @a[team=uBlue,scores={hitByFreeze=1..}] run tp @s @e[type=marker,tag=sciFreeze,tag=blue,limit=1,sort=nearest]

#particles
execute at @a[scores={hitByFreeze=1..}] run particle minecraft:electric_spark ~ ~.7 ~ .3 .5 .3 .001 30 force @a

#players who are no longer frozen have their armor stand killed
execute unless entity @a[team=uRed,scores={hitByFreeze=25}] run kill @e[type=marker,tag=sciFreezeLook,tag=red]
execute unless entity @a[team=uBlue,scores={hitByFreeze=25}] run kill @e[type=marker,tag=sciFreezeLook,tag=blue]

#players no longer frozen hear a sound and have the title cleared
execute as @a[scores={hitByFreeze=1}] run title @s clear
execute as @a[scores={hitByFreeze=1}] at @s run playsound block.glass.break master @s

#iterate hitByFreeze down 1
execute as @a[scores={hitByFreeze=1..}] run scoreboard players remove @s hitByFreeze 1