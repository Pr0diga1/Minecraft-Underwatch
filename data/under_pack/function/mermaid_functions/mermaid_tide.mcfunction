scoreboard players add @s mermaidtide 1
execute at @e[tag=mermaidtide] if entity @s[distance=..3] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 2 2
execute if score @s mermaidtide matches 1 run scoreboard players set @s ability1 300
execute if score @s ability1 matches 300 run item replace entity @s hotbar.2 with barrier 15
execute if entity @s[team=uRed] if score @s mermaidtide matches 100 run kill @e[tag=red,tag=mermaidtide]
execute if entity @s[team=uBlue] if score @s mermaidtide matches 100 run kill @e[tag=blue,tag=mermaidtide]
execute if score @s mermaidtide matches 100 run scoreboard players reset @s mermaidtide



