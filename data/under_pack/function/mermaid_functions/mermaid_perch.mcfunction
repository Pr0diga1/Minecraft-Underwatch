#remove 1 from the perch
execute unless score @s mermaiddive matches 1.. if score @s mermaidmist matches 1.. run scoreboard players remove @s mermaidperch 1
execute unless score @s mermaiddive matches 1.. if score @s mermaidmist matches 1.. run experience add @s -10 points
execute unless score @s mermaiddive matches 1.. if score @s mermaidmist matches 1.. run scoreboard players remove @s mermaidmist 1