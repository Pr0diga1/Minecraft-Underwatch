execute if score @s elementalFireHit = ElementalFireTiming constant run function under_pack:elemental_functions/elemental_fire_hit
scoreboard players remove @a[scores={elementalEarthTimer=1..}] elementalEarthTimer 1
execute if entity @s[scores={elementalEarthTimer=1..}] at @s positioned as @e[type=marker,sort=nearest,tag=elementalStun,limit=1,distance=..3] run tp @s ~ ~ ~
execute if entity @s[scores={elementalEarthTimer=1}] at @s run kill @e[type=marker,sort=nearest,tag=elementalStun,limit=1,distance=..3]
execute if entity @s[scores={elementalEarthTimer=1}] at @s run title @s clear