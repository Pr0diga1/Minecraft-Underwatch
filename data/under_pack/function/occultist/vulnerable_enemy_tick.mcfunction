execute if score @s occultistDamageTaken matches 1.. run damage @s 1 under_pack:vulnerable by @p
#tag @s remove vulnerable
scoreboard players reset @s occultistDamageTaken
