advancement revoke @s only under_pack:vamp/attack2

#new shears
item replace entity @s hotbar.0 with shears[custom_name={"color":"dark_red","text":"Lacerate"},custom_data={vampAttacktemp:true},consumable={consume_seconds:9999999,animation:"spear",sound:"ambient.underwater.loop",has_consume_particles:false},enchantments={"under_pack:vamp/lunge":1}] 1

#experience
experience set @s 0 points
scoreboard players set @s ability8 0

#attack
execute at @s[tag=vampLeft] run function under_pack:vamp_functions/attack_2

execute at @s[tag=!vampLeft] run function under_pack:vamp_functions/attack_4

execute as @s[tag=vampLeft] run return run tag @s remove vampLeft
tag @s add vampLeft