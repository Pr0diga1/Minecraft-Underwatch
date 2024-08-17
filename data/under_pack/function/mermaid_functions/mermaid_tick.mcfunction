#cooldown
function under_pack:mermaid_functions/mermaid_cooldown
#carrot detection
execute as @s if score @s mermaidburst matches 3.. if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{mermaidburst:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_burst
execute if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{mermaiddive:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaiddive:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_dive

#mist tick
execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run scoreboard players add @s mermaidmist 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run experience add @s 10
execute if score @s mermaidmist matches 74 run experience set @s 741 points
item replace entity @s hotbar.1 with ender_eye[custom_name='{"color":"dark_blue","text":"Nautical Mist"}',custom_data={mermaidmist:1b}] 1

#team ticks
execute if entity @s[team=uRed] run function under_pack:mermaid_functions/mermaid_tick_red
execute if entity @s[team=uBlue] run function under_pack:mermaid_functions/mermaid_tick_blue

##diving
execute at @s if score @s mermaiddive matches 1 run function under_pack:mermaid_functions/mermaid_undive
execute if score @s mermaiddive matches 1.. run item modify entity @s hotbar.3 under_pack:mermaid/diving
execute if score @s mermaiddive matches 1.. run scoreboard players remove @s mermaiddive 1
execute at @s if score @s mermaiddive matches 1.. run particle minecraft:rain ~ ~ ~ .5 .5 .5 5 30

##mist stuffs 
#detect when mist usage was stopped
execute if score @s mermaidDetect matches 1.. run scoreboard players remove @s mermaidDetect 1

#sendpeople down
#execute as @s[team=uRed] as @a[tag=intideblue,nbt={OnGround:0b}] at @s run function under_pack:mermaid_functions/mermaid_drop_start
#execute as @s[team=uBlue] as @a[tag=intidered,nbt={OnGround:0b}] at @s run function under_pack:mermaid_functions/mermaid_drop_start

#burst hit count
execute if score @s mermaiddamage matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}}] run scoreboard players add @s mermaidburst 1
scoreboard players set @s mermaiddamage 0

scoreboard players reset @s reset