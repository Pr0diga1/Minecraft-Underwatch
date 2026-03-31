execute if score @s mermaidmist matches 9.. at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:mermaid_functions/mermaid_start_ray
execute if score @s mermaidmist matches 9.. run scoreboard players set @s mermaidmistbuffer 10

execute if score @s mermaidmist matches 9.. run experience add @s -8 points
execute if score @s mermaidmist matches 9.. run scoreboard players remove @s mermaidmist 8


scoreboard players set @s mermaidDetect 3

advancement revoke @s only under_pack:mermaid/mist