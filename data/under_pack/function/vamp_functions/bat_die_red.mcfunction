ride @s dismount
tp @e[tag=vampbatred] ~ ~-256 ~
kill @e[tag=vampbatred]
kill @e[tag=vampridered]
attribute @s scale base set 1

item replace entity @s hotbar.1 with barrier[custom_name={"text":"Bat on cooldown"}] 5
scoreboard players set @s ability1 100
