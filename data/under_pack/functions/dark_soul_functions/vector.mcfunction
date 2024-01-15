execute as @e[tag=vector] at @s facing entity @p[tag=rolling,limit=1] eyes at @p[tag=rolling,limit=1] run tp ^ ^ ^2
execute at @p[tag=rolling,limit=1] run summon marker ~ ~ ~ {Tags:["mover"]}