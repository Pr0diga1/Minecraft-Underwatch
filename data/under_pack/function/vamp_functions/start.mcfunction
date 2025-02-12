clear @s
experience set @s 100 levels
experience set @s 0 points
scoreboard players reset @s vampblood
scoreboard players set @s ability1 0
scoreboard players set @s vampdetect -1
item replace entity @s hotbar.1 with ghast_tear[custom_name='{"text":"Tainted Fangs"}',custom_data={vamptaint:1b}]
item replace entity @s hotbar.2 with ender_eye[custom_name='{"text":"Slorp"}',custom_data={vampsuck:1b}]
item replace entity @s hotbar.3 with ender_eye[custom_name='{"text":"Become Bat"}',custom_data={vampbat:1b}]