#particle
execute at @a[tag=mermaidhitbyheal,team=uRed] run particle bubble ~ ~1.3 ~ .17 .3 .17 .1 5 force @s
#mist regen
execute as @a[tag=mermaidhitbyheal,team=uRed] run scoreboard players add @s mermaidheal 1
execute as @a[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:5b,duration:19}]},team=uRed] run effect clear @s minecraft:regeneration
effect give @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uRed] regeneration 1 5 true
execute as @a[tag=mermaidhitbyheal,scores={mermaidheal=4..},team=uRed] run scoreboard players reset @s mermaidheal
tag @a[tag=mermaidhitbyheal,team=uRed] remove mermaiddontheal
tag @a[tag=mermaidhitbyheal,team=uRed] remove mermaidhitbyheal

#perch stuff
execute if score @s mermaidperch matches ..-2 run scoreboard players operation @s mermaidperch = mermaidRedPerchConstant constant
execute if score @s mermaidperch matches 0 run effect give @s regeneration 1 5 true
execute if score @s mermaidperch matches 0 run scoreboard players set @s mermaidperch -1
execute if score @s mermaidperch matches 0.. run scoreboard players set @s mermaidmistbuffer 10
execute if score @s mermaidperch matches 0.. at @s run particle minecraft:composter ~ ~.7 ~ .3 .5 .3 .1 5 force @a
execute if score @s mermaidperch matches 0.. if score @s mermaidperch = @s mermaidperchbuffer run scoreboard players set @s mermaidperch -1
scoreboard players operation @s mermaidperchbuffer = @s mermaidperch

#detect when mist usage was stopped
execute if score @s[team=uRed] mermaidDetect matches 1 run scoreboard players reset @a[scores={mermaidheal=1..}] mermaidheal


