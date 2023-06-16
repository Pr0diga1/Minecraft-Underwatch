execute if score @s mermaidtide matches 1.. run scoreboard players remove @s mermaidtide 1
execute if score @s mermaidtide matches 0 run kill @e[tag=mermaidtrack]

execute at @e[tag=mermaidtrack] run effect give @a[distance=..3] slowness 1 3 true
execute at @e[tag=mermaidtrack] run effect give @a[distance=..3] jump_boost 1 128 true

execute at @e[tag=mermaidtrack] run effect clear @a[distance=3..5] slowness
execute at @e[tag=mermaidtrack] run effect clear @a[distance=3..5] jump_boost

execute at @e[tag=mermaidtrack] run function under_pack:mermaid_functions/mermaid_particle