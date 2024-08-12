function under_pack:mermaid_functions/mermaid_undive
execute if entity @s[team=uRed] run kill @e[tag=mermaidtrack,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=mermaidtrack,tag=blue]
scoreboard players set @s mermaidmist 74
experience set @s 100 levels
experience set @s 741 points
scoreboard players set @s ability1 2
scoreboard players set @s ability4 1
scoreboard players set @s mermaiddive 0
scoreboard players set @s mermaidburst 0
scoreboard players reset @s mermaidtide
execute if entity @s[team=uRed] run kill @e[tag=mermaidtide,tag=red]
execute if entity @s[team=uBlue] run kill @e[tag=mermaidtide,tag=blue]