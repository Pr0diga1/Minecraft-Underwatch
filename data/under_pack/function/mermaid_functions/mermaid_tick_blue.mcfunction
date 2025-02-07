#mist regen
execute as @a[tag=mermaidhitbyheal,team=uBlue] run scoreboard players add @s mermaidheal 1
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:19}]},team=uBlue] run effect clear @s minecraft:regeneration
effect give @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uBlue] regeneration 1 5 true
execute as @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uBlue] run scoreboard players reset @s mermaidheal
tag @a[tag=mermaidhitbyheal,team=uBlue] remove mermaiddontheal
tag @a[tag=mermaidhitbyheal,team=uBlue] remove mermaidhitbyheal

#detect when mist usage was stopped
execute if score @s[team=uBlue] mermaidDetect matches 1 run scoreboard players reset @a[team=uBlue] mermaidheal
