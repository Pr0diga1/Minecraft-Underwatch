#tide pool
execute if score @s ability1 matches 1..300 run scoreboard players remove @s ability1 1
item modify entity @s hotbar.2 under_pack:mermaid/tide_cooldown
execute if entity @s[team=uRed] if score @s ability1 matches 1 run item replace entity @s hotbar.2 with lingering_potion[custom_name='{"color":"blue","text":"Tide Pool"}',custom_data={mermaidtide:1b},potion_contents={custom_color:3366143,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1}]}] 1
execute if entity @s[team=uBlue] if score @s ability1 matches 1 run item replace entity @s hotbar.2 with lingering_potion[custom_name='{"color":"blue","text":"Tide Pool"}',custom_data={mermaidtide:1b},potion_contents={custom_color:3366144,custom_effects:[{id:"minecraft:luck",amplifier:0,duration:1}]}] 1 


#burst
execute if score @s mermaidburst matches 0 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"3","color":"yellow"}]
execute if score @s mermaidburst matches 1 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"2","color":"yellow"}]
execute if score @s mermaidburst matches 2 run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"1","color":"yellow"}]
execute if score @s mermaidburst matches 3.. run title @s actionbar ["",{"text":"Hits Until Tail Whip: ","color":"blue"},{"text":"0","color":"yellow"}]