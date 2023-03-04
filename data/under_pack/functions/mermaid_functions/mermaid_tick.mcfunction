#mist tick
execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run scoreboard players add @s mermaidmist 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run experience add @s 10
execute if score @s mermaidmist matches 74 run experience set @s 741 points

#potion tick
execute if entity @s[team=uRed] as @a[team=uBlue,nbt={ActiveEffects:[{Id:12}]}] run effect give @s slowness 1 2 true
execute if entity @s[team=uBlue] as @a[team=uRed,nbt={ActiveEffects:[{Id:12}]}] run effect give @s slowness 1 2 true




function under_pack:mermaid_functions/mermaid_cooldown