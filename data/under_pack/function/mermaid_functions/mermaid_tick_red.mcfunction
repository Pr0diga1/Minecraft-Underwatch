#red detect pot/spin the blues
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366143}}] at @s run summon marker ~ ~ ~ {Tags:["mermaidtide","red"]}

#counting how many ticks the marker has been alive in order to kill it
execute if entity @e[tag=mermaidtide,tag=red] run function under_pack:mermaid_functions/mermaid_tide_red

#particles
execute at @e[tag=mermaidtide,tag=red] positioned ~ ~-.15 ~ run function under_pack:mermaid_functions/mermaid_particle

#kills the area effect cloud becuase before it detects and spawns a marker this makes it replace
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366143}}] run kill @s

#mist regen
execute as @a[tag=mermaidhitbyheal,team=uRed] run scoreboard players add @s mermaidheal 1
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:19}]},team=uRed] run effect clear @s minecraft:regeneration
effect give @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uRed] regeneration 1 5 true
execute as @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uRed] run scoreboard players reset @s mermaidheal
tag @a[tag=mermaidhitbyheal,team=uRed] remove mermaiddontheal
tag @a[tag=mermaidhitbyheal,team=uRed] remove mermaidhitbyheal

#detect when mist usage was stopped
execute if score @s[team=uRed] mermaidDetect matches 1 run scoreboard players reset @a[scores={mermaidheal=1..}] mermaidheal


