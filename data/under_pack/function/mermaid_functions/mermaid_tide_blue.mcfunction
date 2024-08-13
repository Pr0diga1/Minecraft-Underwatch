scoreboard players add @s mermaidtide 1
execute at @e[tag=mermaidtide,tag=blue] as @a[distance=..3,team=uRed] at @s run tp @s ~ ~ ~ ~-5 ~
execute at @e[tag=mermaidtide,tag=blue] if entity @s[distance=..3] unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 1 3
execute if score @s mermaidtide matches 1 run scoreboard players set @s ability1 260
execute if score @s ability1 matches 260 run item replace entity @s hotbar.2 with barrier[custom_name='{"italic":true,"text":"Tide Pool On Cooldown"}'] 15
execute if score @s mermaidtide matches 80 run kill @e[tag=blue,tag=mermaidtide]
execute if score @s mermaidtide matches 80 run scoreboard players reset @s mermaidtide



