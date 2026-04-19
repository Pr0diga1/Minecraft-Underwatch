ride @s dismount
tp @e[tag=vampbatblue] ~ ~-256 ~
kill @e[tag=vampbatblue]
kill @e[tag=vamprideblue]
attribute @s scale base set 1
stopsound @a * entity.bat.loop

item replace entity @s hotbar.1 with barrier[custom_name={"text":"Bat on cooldown"}] 5
scoreboard players set @s ability1 100
