#blue detect pot/spin the reds
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366144}}] at @s run summon marker ~ ~ ~ {Tags:["mermaidtide","blue"]}

#counting how many ticks the marker has been alive in order to kill it
execute if entity @e[tag=mermaidtide,tag=blue] run function under_pack:mermaid_functions/mermaid_tide_blue

#particles
execute at @e[tag=mermaidtide,tag=blue] positioned ~ ~-.15 ~ run function under_pack:mermaid_functions/mermaid_particle

#kills the area effect cloud becuase before it detects and spawns a marker this makes it replace
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366144}}] run kill @s

#mist regen
execute as @a[tag=mermaidhitbyheal,team=uBlue] run scoreboard players add @s mermaidheal 1
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",duration:19}]},team=uBlue] run effect clear @s minecraft:regeneration
effect give @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uBlue] regeneration 1 5 true
execute as @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uBlue] run scoreboard players reset @s mermaidheal
tag @a[tag=mermaidhitbyheal,team=uBlue] remove mermaiddontheal
tag @a[tag=mermaidhitbyheal,team=uBlue] remove mermaidhitbyheal

#detect when mist usage was stopped
execute if score @s[team=uBlue] mermaidDetect matches 1 run scoreboard players reset @a[team=uBlue] mermaidheal
