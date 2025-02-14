execute if score @s occultistDamageTaken matches 1.. run damage @s 1 under_pack:vulnerable
tag @s remove vulnerable
scoreboard players reset @s occultistDamageTaken
