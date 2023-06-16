execute at @s if entity @s[team=uRed] run summon marker ~ ~ ~ {Tags:["mermaidtrack","red"]}
execute at @s if entity @s[team=uBlue] run summon marker ~ ~ ~ {Tags:["mermaidtrack","blue"]}

execute if entity @s[team=uRed] run ride @e[limit=1,tag=mermaidtrack,tag=red] mount @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b,red:1b}}}] 
execute if entity @s[team=uBlue] run ride @e[limit=1,tag=mermaidtrack,tag=blue] mount @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b,blue:1b}}}] 

scoreboard players set @s mermaidtide 100
scoreboard players set @s ability1 300