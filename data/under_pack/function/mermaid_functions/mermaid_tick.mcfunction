#cooldown
function under_pack:mermaid_functions/mermaid_cooldown
#carrot detection
execute as @s if score @s mermaidburst matches 3.. if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{mermaidburst:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_burst
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{mermaiddive:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaiddive:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_dive

#mist tick
execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches ..730 run experience add @s 10
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches ..740 run scoreboard players add @s mermaidmist 10
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches 741.. run scoreboard players set @s mermaidmist 741
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches 741.. run experience set @s 741 points

#team ticks
execute if entity @s[team=uRed] run function under_pack:mermaid_functions/mermaid_tick_red
execute if entity @s[team=uBlue] run function under_pack:mermaid_functions/mermaid_tick_blue

#vent tracking
execute if score @s ability7 matches 0.. run scoreboard players remove @s ability7 1
execute if score @s ability7 matches 0 run function under_pack:mermaid_functions/mermaid_perch_end

##diving
execute at @s if score @s mermaiddive matches 1 run function under_pack:mermaid_functions/mermaid_undive
execute if score @s mermaiddive matches 1.. run item modify entity @s hotbar.2 under_pack:mermaid/diving
execute if score @s mermaiddive matches 1.. run scoreboard players remove @s mermaiddive 1
execute at @s if score @s mermaiddive matches 1.. run particle minecraft:rain ~ ~.2 ~ .5 .5 .5 5 30
execute at @s if score @s mermaiddive matches 1.. run particle minecraft:bubble ~ ~.2 ~ .5 .5 .5 5 30

##mist stuffs 
#detect when mist usage was stopped
execute if score @s mermaidDetect matches 1.. run scoreboard players remove @s mermaidDetect 1

#burst hit count
execute if score @s mermaiddamage matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}}] run scoreboard players add @s mermaidburst 1
scoreboard players set @s mermaiddamage 0

scoreboard players reset @s reset