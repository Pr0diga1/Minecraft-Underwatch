tag @s add mermaiddontheal
scoreboard players set hit mermaidRay 0
scoreboard players set distance mermaidRay 0
function under_pack:mermaid_functions/mermaid_ray
execute as @a run tag @s remove mermaidHit
tag @s remove mermaiddontheal