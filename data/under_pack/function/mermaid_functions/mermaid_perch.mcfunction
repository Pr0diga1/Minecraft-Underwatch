#remove 1 from the perch
execute if score @s mermaidmist matches 1.. run scoreboard players remove @s mermaidperch 1
execute if score @s mermaidmist matches 1.. run experience add @s -5 points
execute if score @s mermaidmist matches 1.. run scoreboard players remove @s mermaidmist 5

advancement revoke @s only under_pack:mermaid/perch