execute if score @s mermaidtide matches 1.. run scoreboard players remove @s mermaidtide 1
#red
execute if entity @s[team=uRed] if score @s mermaidtide matches 0 run kill @e[tag=mermaidtrack,tag=red]

execute at @e[tag=mermaidtrack,tag=red] run effect give @a[distance=..3,team=uBlue] slowness 1 3 true
execute at @e[tag=mermaidtrack,tag=red] run effect give @a[distance=..3,team=uBlue,nbt={OnGround:1b}] jump_boost 1 127 true

execute at @e[tag=mermaidtrack,tag=red] run effect clear @a[distance=3..5,team=uBlue] slowness
execute at @e[tag=mermaidtrack,tag=red] run effect clear @a[distance=3..5,team=uBlue] jump_boost

#blue
execute if entity @s[team=uBlue] if score @s mermaidtide matches 0 run kill @e[tag=mermaidtrack,tag=blue]

execute at @e[tag=mermaidtrack,tag=blue] run effect give @a[distance=..3,team=uRed] slowness 1 3 true
execute at @e[tag=mermaidtrack,tag=blue] run effect give @a[distance=..3,team=uRed,nbt={OnGround:1b}] jump_boost 1 127 true

execute at @e[tag=mermaidtrack,tag=blue] run effect clear @a[distance=3..5,team=uRed] slowness
execute at @e[tag=mermaidtrack,tag=blue] run effect clear @a[distance=3..5,team=uRed] jump_boost

#self heal
execute at @e[tag=mermaidtrack,tag=red] if entity @s[team=uRed,predicate=!under_pack:alch_regen_check,distance=..3] run effect give @s regeneration 2 2 true
execute at @e[tag=mermaidtrack,tag=blue] if entity @s[team=uBlue,predicate=!under_pack:alch_regen_check,distance=..3] run effect give @s regeneration 2 2 true

#particle
execute at @e[tag=mermaidtrack] run function under_pack:mermaid_functions/mermaid_particle