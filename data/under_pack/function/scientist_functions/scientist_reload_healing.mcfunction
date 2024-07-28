#update thing's durability
item modify entity @s hotbar.1 under_pack:scientist/default_arrows

#iterate the timer
scoreboard players remove @s scientistHealingReload 1

#give new arrows when done
execute if score @s scientistHealingReload matches 0 run item replace entity @s hotbar.1 with tipped_arrow[custom_name='{"color":"yellow","text":"Healing Dart"}',custom_model_data=4,custom_data={scientistHealing:1b},potion_contents={custom_color:16768256,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:30,show_particles:0b}]}] 4
