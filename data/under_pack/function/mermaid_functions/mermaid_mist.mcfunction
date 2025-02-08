execute if score @s mermaidmist matches 2.. at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:mermaid_functions/mermaid_start_ray
execute if score @s mermaidmist matches 2.. run scoreboard players set @s mermaidmistbuffer 10

execute if score @s mermaidmist matches 2.. run experience add @s -10 points
execute if score @s mermaidmist matches 2.. run scoreboard players remove @s mermaidmist 2


scoreboard players set @s mermaidDetect 3
