#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit mermaidRay 1
#if it hits a player, run a function as that player
execute if score hit mermaidRay matches 0 if entity @s[team=uBlue,scores={mermaidheal=1}] positioned ~ ~ ~ as @a[tag=!mermaiddontheal,dx=0,sort=nearest,team=uBlue] at @s positioned ~-0.99 ~-.99 ~-0.99 if entity @s[dx=0] run scoreboard players set @s mermaidtoggle 1
execute if score hit mermaidRay matches 0 if entity @s[team=uRed,scores={mermaidheal=1}] positioned ~ ~ ~ as @a[tag=!mermaiddontheal,dx=0,sort=nearest,team=uRed] at @s positioned ~-0.99 ~-.99 ~-0.99 if entity @s[dx=0] run scoreboard players set @s mermaidtoggle 1
#add 1 to the distance
scoreboard players add distance mermaidRay 1
#particles
execute if block ~ ~ ~ #under_pack:non_solid run particle bubble_pop ^ ^-.5 ^ 0.15 0.05 0.15 0 1

#teleport

#rerun command
execute if score hit mermaidRay matches 0 if score distance mermaidRay matches ..59 positioned ^ ^ ^0.1 run function under_pack:mermaid_functions/mermaid_ray