#cooldown
function under_pack:mermaid_functions/mermaid_cooldown
#carrot detection
execute as @s if score @s mermaidburst matches 3.. if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{mermaidburst:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}},scores={reset=1..}] as @s run function under_pack:mermaid_functions/mermaid_burst
#mist tick
execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run scoreboard players add @s mermaidmist 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run experience add @s 10
execute if score @s mermaidmist matches 74 run experience set @s 741 points
item replace entity @s hotbar.1 with ender_eye[custom_name='{"color":"dark_blue","text":"Nautical Mist"}',custom_data={mermaidmist:1b}] 1

##new tide stuffs
#red detect pot/spin the blues
execute if entity @s[team=uRed] as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366143}}] at @s run summon marker ~ ~ ~ {Tags:["mermaidtide","red"]}
execute as @e[tag=mermaidtide,tag=red] at @s as @a[distance=..3,team=uBlue] at @s run tp @s ~ ~ ~ ~-5 ~

#blue detect pot/spin the reds
execute if entity @s[team=uBlue] as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366144}}] at @s run summon marker ~ ~ ~ {Tags:["mermaidtide","blue"]}
execute as @e[tag=mermaidtide,tag=blue] at @s as @a[distance=..3,team=uRed] at @s run tp @s ~ ~ ~ ~-5 ~

#counting how many ticks the marker has been alive in order to kill it
execute if entity @e[tag=mermaidtide] run function under_pack:mermaid_functions/mermaid_tide

#particles
execute at @e[tag=mermaidtide] positioned ~ ~-.15 ~ run function under_pack:mermaid_functions/mermaid_particle

#kills the area effect cloud becuase before it detects and spawns a marker this makes it replace
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366143}}] run kill @s
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366144}}] run kill @s

##mist stuffs 
#detect when mist usage was stopped
execute if score @s mermaidDetect matches 1.. run scoreboard players remove @s mermaidDetect 1
execute if score @s[team=uRed] mermaidDetect matches 1 run scoreboard players set @a[team=uRed] mermaidheal 1
execute if score @s[team=uBlue] mermaidDetect matches 1 run scoreboard players set @a[team=uBlue] mermaidheal 1

#give regen
execute as @s[team=uRed] as @a[team=uRed] run scoreboard players operation @s mermaidhealbuffer = @s mermaidheal
execute as @s[team=uRed] as @a[team=uRed] run scoreboard players operation @s mermaidhealbuffer %= mermaidHealingConstant constant

execute as @s[team=uBlue] as @a[team=uBlue] run scoreboard players operation @s mermaidhealbuffer = @s mermaidheal
execute as @s[team=uBlue] as @a[team=uBlue] run scoreboard players operation @s mermaidhealbuffer %= mermaidHealingConstant constant

execute as @a[scores={mermaidhealbuffer=0}] run effect give @s regeneration 1 20
execute as @a[scores={mermaidhealbuffer=0}] run scoreboard players set @s mermaidtoggle 1

#remove regen after one tick
execute as @s[team=uRed] as @a[team=uRed,scores={mermaidtoggle=0}] run effect clear @s regeneration
execute as @s[team=uRed] as @a[team=uRed,scores={mermaidtoggle=0..}] run scoreboard players remove @s mermaidtoggle 1

execute as @s[team=uBlue] as @a[team=uBlue,scores={mermaidtoggle=0}] run effect clear @s regeneration
execute as @s[team=uBlue] as @a[team=uBlue,scores={mermaidtoggle=0..}] run scoreboard players remove @s mermaidtoggle 1

#send people down
#execute as @s[team=uRed] as @a[tag=intideblue,nbt={OnGround:0b}] at @s run function under_pack:mermaid_functions/mermaid_drop_start
#execute as @s[team=uBlue] as @a[tag=intidered,nbt={OnGround:0b}] at @s run function under_pack:mermaid_functions/mermaid_drop_start

#burst hit count
execute if score @s mermaiddamage matches 1.. if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{mermaidburst:1b}}}}] run scoreboard players add @s mermaidburst 1
scoreboard players set @s mermaiddamage 0

scoreboard players reset @s reset