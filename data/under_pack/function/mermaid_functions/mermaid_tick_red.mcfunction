#mist regen
execute as @a[tag=mermaidhitbyheal,team=uRed] run scoreboard players add @s mermaidheal 1
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:19}]},team=uRed] run effect clear @s minecraft:regeneration
effect give @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uRed] regeneration 1 5 true
execute as @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uRed] run scoreboard players reset @s mermaidheal
tag @a[tag=mermaidhitbyheal,team=uRed] remove mermaiddontheal
tag @a[tag=mermaidhitbyheal,team=uRed] remove mermaidhitbyheal

#detect when mist usage was stopped
execute if score @s[team=uRed] mermaidDetect matches 1 run scoreboard players reset @a[scores={mermaidheal=1..}] mermaidheal


