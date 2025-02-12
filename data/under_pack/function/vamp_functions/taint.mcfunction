damage @a[dx=0,limit=1,sort=nearest,tag=!vamp] 1 player_attack by @s
execute if entity @s[team=uRed] run tag @a[dx=0,limit=1,sort=nearest,tag=!vamp] add taintedred
execute if entity @s[team=uBlue] run tag @a[dx=0,limit=1,sort=nearest,tag=!vamp] add taintedblue
execute if entity @s[team=uRed] run scoreboard players set @a[tag=taintedred] vamptaint 200
execute if entity @s[team=uBlue] run scoreboard players set @a[tag=taintedblue] vamptaint 200

say hi

scoreboard players set @s ability1 100
scoreboard players set @s ability2 260
item replace entity @s hotbar.1 with barrier[custom_name='{"text":"Tainted Fangs on Cooldown"}'] 13

