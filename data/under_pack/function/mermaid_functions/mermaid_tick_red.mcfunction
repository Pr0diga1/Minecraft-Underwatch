#red detect pot/spin the blues
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366143}}] at @s run summon marker ~ ~ ~ {Tags:["mermaidtide","red"]}


#counting how many ticks the marker has been alive in order to kill it
execute if entity @e[tag=mermaidtide,tag=red] run function under_pack:mermaid_functions/mermaid_tide_red

#particles
execute at @e[tag=mermaidtide,tag=red] positioned ~ ~-.15 ~ run function under_pack:mermaid_functions/mermaid_particle

#kills the area effect cloud becuase before it detects and spawns a marker this makes it replace
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366143}}] run kill @s

#detect when mist usage was stopped
execute if score @s[team=uRed] mermaidDetect matches 1 run scoreboard players set @a[team=uRed] mermaidheal 1

#give regen
execute as @a[team=uRed] run scoreboard players operation @s mermaidhealbuffer = @s mermaidheal
execute as @a[team=uRed] run scoreboard players operation @s mermaidhealbuffer %= mermaidHealingConstant constant

#remove regen after one tick
execute as @a[team=uRed,scores={mermaidtoggle=0}] run effect clear @s regeneration
execute as @a[team=uRed,scores={mermaidtoggle=0..}] run scoreboard players remove @s mermaidtoggle 1

