#update thing's durability
item modify entity @s hotbar.0 under_pack:scientist/default_arrows

#iterate the timer
scoreboard players remove @s scientistDamageReload 1

#give new arrows when done
execute if score @s scientistDamageReload matches 0 run item replace entity @s hotbar.0 with tipped_arrow[custom_name='{"color":"dark_red","text":"Damage Dart"}',custom_model_data=3,custom_data={scientistDamage:1b},potion_contents={custom_color:0,custom_effects:[{id:"minecraft:wither",amplifier:3,duration:40,show_particles:0b}]}] 4
