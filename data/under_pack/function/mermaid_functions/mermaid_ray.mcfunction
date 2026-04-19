#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run return fail
#if it hits a player, run a function as that player
#execute positioned ~-.64 ~-.8 ~-.64 as @e[dx=0,sort=nearest,tag=!mermaiddontheal] run say i hat ethis

execute if entity @s[team=uBlue] positioned ~-0.5 ~-.88 ~-0.5 as @a[team=uBlue,dx=0,sort=nearest,tag=!mermaiddontheal] at @s positioned ~-0.69 ~-.69 ~-0.69 if entity @s[dx=0] run function under_pack:mermaid_functions/mermaid_hitbyheal
execute if entity @s[team=uRed] positioned ~-0.5 ~-.88 ~-0.5 as @a[team=uRed,dx=0,sort=nearest,tag=!mermaiddontheal] at @s positioned ~-0.69 ~-.69 ~-0.69 if entity @s[dx=0] run function under_pack:mermaid_functions/mermaid_hitbyheal

#add 1 to the distance
scoreboard players add distance mermaidRay 1
#particles
#execute if block ~ ~ ~ #under_pack:non_solid run particle bubble_pop ^ ^-.8 ^ 0.15 0.05 0.15 0 1
#execute if block ~ ~ ~ #under_pack:non_solid run particle bubble_pop ^ ^-.5 ^ 0 0 0 0 1


#teleport

#rerun command
execute if score distance mermaidRay matches ..75 positioned ^ ^ ^0.1 run function under_pack:mermaid_functions/mermaid_ray