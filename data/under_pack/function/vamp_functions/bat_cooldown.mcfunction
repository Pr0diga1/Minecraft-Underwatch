item modify entity @s hotbar.1 under_pack:vamp/bat
execute if score @s ability1 matches 1 run item replace entity @s hotbar.1 with charcoal[consumable={consume_seconds:2,animation:"bow",sound:"entity.bat.loop",has_consume_particles:false},custom_data={vampbat:true},custom_name={"color":"black","text":"Become Bat"},unbreakable={}] 1
scoreboard players remove @s ability1 1
