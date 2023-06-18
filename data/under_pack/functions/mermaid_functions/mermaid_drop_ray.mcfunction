#if it hits a block, indicate so
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit mermaidRay 1
#add 1 to the distance
scoreboard players add distance mermaidRay 1
#teleport
execute if score hit mermaidRay matches 1 run tp @s ~ ~.2 ~
#rerun command
execute if score hit mermaidRay matches 0 if score distance mermaidRay matches ..119 positioned ~ ~-.2 ~ run function under_pack:mermaid_functions/mermaid_drop_ray