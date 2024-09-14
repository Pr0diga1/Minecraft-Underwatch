tp ^ ^ ^0.5
tp @p[tag=rolling] ~ ~ ~

execute if entity @e[tag=vector,distance=..0.25] run tag @p[tag=rolling] remove rolling
execute if entity @e[tag=vector,distance=..0.25] run kill @e[tag=vector,sort=nearest,limit=1]
execute if entity @e[tag=vector,distance=..0.25] as @p run kill @e[tag=mover,sort=nearest]