#tide pool
execute if score @s ability1 matches 1..300 run scoreboard players remove @s ability1 1
item modify entity @s hotbar.2 under_pack:mermaid/tide_cooldown
execute if entity @s[team=uRed] if score @s ability1 matches 1 run item replace entity @s hotbar.2 with lingering_potion[custom_name='{"color":"blue","text":"Tide Pool"}',custom_data={mermaidtide:1b},potion_contents={custom_color:3366143,custom_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:1}]}] 1
execute if entity @s[team=uBlue] if score @s ability1 matches 1 run item replace entity @s hotbar.2 with lingering_potion[custom_name='{"color":"blue","text":"Tide Pool"}',custom_data={mermaidtide:1b},potion_contents={custom_color:3366144,custom_effects:[{id:"minecraft:fire_resistance",amplifier:0,duration:1}]}] 1 

#dive
item modify entity @s hotbar.3 under_pack:mermaid/dive
execute if score @s ability4 matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick[custom_name='{"color":"aqua","text":"Dive"}',unbreakable={show_in_tooltip:false},custom_model_data=0,custom_data={mermaiddive:1b}] 1
execute if score @s ability4 matches 1.. run scoreboard players remove @s ability4 1

#burst
execute if score @s mermaidburst matches 0 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"3","color":"yellow"}]
execute if score @s mermaidburst matches 1 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"2","color":"yellow"}]
execute if score @s mermaidburst matches 2 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"1","color":"yellow"}]
execute if score @s mermaidburst matches 3.. run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"0","color":"yellow"}]