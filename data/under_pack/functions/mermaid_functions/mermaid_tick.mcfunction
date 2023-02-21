execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run scoreboard players add @s mermaidmist 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run experience add @s 10
execute if score @s mermaidmist matches 74 run experience set @s 741 points

