#cooldown
function under_pack:mermaid_functions/mermaid_cooldown
#carrot detection
execute as @s if score @s mermaidburst matches 3.. if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{mermaidburst:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_burst
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{mermaiddive:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaiddive:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_dive

#mist tick
execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches ..740 run experience add @s 10
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches ..730 run scoreboard players add @s mermaidmist 10
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches 741.. run scoreboard players set @s mermaidmist 741
execute if score @s mermaidmistbuffer matches 0 if score @s mermaidmist matches 741.. run experience set @s 741 points


item replace entity @s hotbar.1 with ender_eye[custom_name={"color":"dark_blue","text":"Nautical Mist"},custom_data={mermaidmist:1b}] 1

#perch stuff
execute if score @s mermaidperch matches ..-2 run scoreboard players operation @s mermaidperch = mermaidPerchConstant constant
execute if score @s mermaidperch matches 0 run effect give @s regeneration 1 5 true
execute if score @s mermaidperch matches 0 run scoreboard players set @s mermaidperch -1
execute if score @s mermaidperch matches 0.. run scoreboard players set @s mermaidmistbuffer 10
execute if score @s mermaidperch matches 0.. at @s run particle minecraft:composter ~ ~.7 ~ .3 .5 .3 .1 5 force @a
execute if score @s mermaidperch matches 0.. if score @s mermaidperch = @s mermaidperchbuffer run scoreboard players set @s mermaidperch -1
scoreboard players operation @s mermaidperchbuffer = @s mermaidperch
item replace entity @s hotbar.3 with ender_eye[custom_name={"color":"gray","text":"Rock Perch"},custom_data={mermaidperch:1b}] 1

#team ticks
execute if entity @s[team=uRed] run function under_pack:mermaid_functions/mermaid_tick_red
execute if entity @s[team=uBlue] run function under_pack:mermaid_functions/mermaid_tick_blue

##diving
execute at @s if score @s mermaiddive matches 1 run function under_pack:mermaid_functions/mermaid_undive
execute if score @s mermaiddive matches 1.. run item modify entity @s hotbar.2 under_pack:mermaid/diving
execute if score @s mermaiddive matches 1.. run scoreboard players remove @s mermaiddive 1
execute at @s if score @s mermaiddive matches 1.. run particle minecraft:rain ~ ~ ~ .5 .5 .5 5 30
execute at @s if score @s mermaiddive matches 1.. run particle minecraft:bubble ~ ~ ~ .5 .5 .5 5 30

##mist stuffs 
#detect when mist usage was stopped
execute if score @s mermaidDetect matches 1.. run scoreboard players remove @s mermaidDetect 1

#burst hit count
execute if score @s mermaiddamage matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}}] run scoreboard players add @s mermaidburst 1
scoreboard players set @s mermaiddamage 0

scoreboard players reset @s reset