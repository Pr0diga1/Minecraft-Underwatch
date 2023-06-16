execute at @s run summon marker ~ ~ ~ {Tags:["mermaidtrack"]}
ride @e[limit=1,tag=mermaidtrack] mount @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b}}}] 
scoreboard players set @s mermaidtide 100
scoreboard players set @s ability1 300