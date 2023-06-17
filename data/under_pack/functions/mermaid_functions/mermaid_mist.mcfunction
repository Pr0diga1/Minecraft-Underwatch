execute if score @s mermaidmist matches 1.. at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:mermaid_functions/mermaid_start_ray
execute if score @s mermaidmist matches 1.. run scoreboard players set @s mermaidmistbuffer 20

execute if score @s mermaidmist matches 1.. run experience add @s -10 points
execute if score @s mermaidmist matches 1.. run scoreboard players remove @s mermaidmist 1


scoreboard players set @s mermaidDetect 3
