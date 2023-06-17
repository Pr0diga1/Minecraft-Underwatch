execute if score @s mermaidmist matches 1.. at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:mermaid_functions/mermaid_start_ray
execute if score @s mermaidmist matches 1.. run scoreboard players set @s mermaidmistbuffer 20

execute if score @s mermaidmist matches 1.. run experience add @s -10 points
execute if score @s mermaidmist matches 1.. run scoreboard players remove @s mermaidmist 1

execute if score @s mermaidheal matches ..0 run scoreboard players set @s mermaidheal 5
scoreboard players remove @s mermaidheal 1
execute if entity @s[scores={mermaidheal=1}] as @a[scores={mermaidtoggle=1}] run effect give @s regeneration 1 255
execute if entity @s[scores={mermaidheal=0}] as @a[scores={mermaidtoggle=1}] run effect clear @s regeneration
execute if score @s mermaidheal matches 0 run scoreboard players set @a mermaidtoggle 0 


