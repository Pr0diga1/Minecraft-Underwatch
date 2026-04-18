scoreboard players add @s vampattack 1

# make sure advancement is revoked
advancement revoke @s only under_pack:vamp/attack

#new attributes
execute if score @s vampattack matches 1 run item replace entity @s armor.chest with leather_chestplate[dyed_color=0,trim={material:"minecraft:redstone",pattern:"minecraft:vex"},unbreakable={},attribute_modifiers=[{id:"jump_strength",type:"jump_strength",amount:-10,operation:"add_value",slot:"chest"},{id:"step_height",type:"step_height",amount:1,operation:"add_value",slot:"chest"}]] 1

#attack phase 1
execute at @s[scores={vampattack=1..29}] run return run function under_pack:vamp_functions/attack_1
#attack phase 2
execute at @s[scores={vampattack=30}] run return run function under_pack:vamp_functions/attack_2
#attack phase 3
execute at @s[scores={vampattack=31..59}] run return run function under_pack:vamp_functions/attack_3
#attack phase 4
execute at @s[scores={vampattack=60}] run return run function under_pack:vamp_functions/attack_4
#attack phase 5
execute at @s[scores={vampattack=61..86}] run return run function under_pack:vamp_functions/attack_5
#attack phase 6
execute at @s[scores={vampattack=87..94}] run return run function under_pack:vamp_functions/attack_6
#attack phase 7
execute at @s[scores={vampattack=95..119}] run function under_pack:vamp_functions/attack_1
execute at @s[scores={vampattack=95..119}] run return run function under_pack:vamp_functions/attack_3
#attack phase 8
execute at @s[scores={vampattack=120}] run function under_pack:vamp_functions/attack_2
execute at @s[scores={vampattack=120}] run return run function under_pack:vamp_functions/attack_4

#reset
execute if score @s vampattack matches 121 run scoreboard players set @s vampattack 0