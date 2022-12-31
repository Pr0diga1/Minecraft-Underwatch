scoreboard players set @s ray_steps 150
scoreboard players set @s ray_success 0
scoreboard players reset @s reset
function under_pack:lumberjack_functions/lumberjack_ray
#resetting code

#removes xp
experience set @s 0 levels
experience set @s 0 points

#ult charge
scoreboard players set @s ultKills 0
scoreboard players set @s ultKillsBuffer 0
scoreboard players set @s ultTicks 0
scoreboard players set @s ultDamage 0
scoreboard players set @s ultCharge 0


scoreboard players remove @s lumberjack_ult_casts 1
execute if score @s lumberjack_ult_casts matches 0 run item replace entity @s hotbar.8 with air