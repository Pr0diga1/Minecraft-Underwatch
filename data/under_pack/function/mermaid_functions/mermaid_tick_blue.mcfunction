#blue detect pot/spin the reds
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366144}}] at @s run summon marker ~ ~ ~ {Tags:["mermaidtide","blue"]}

#counting how many ticks the marker has been alive in order to kill it
execute if entity @e[tag=mermaidtide,tag=blue] run function under_pack:mermaid_functions/mermaid_tide_blue

#particles
execute at @e[tag=mermaidtide,tag=blue] positioned ~ ~-.15 ~ run function under_pack:mermaid_functions/mermaid_particle

#kills the area effect cloud becuase before it detects and spawns a marker this makes it replace
execute as @e[type=area_effect_cloud,nbt={potion_contents:{custom_color:3366144}}] run kill @s

#detect when mist usage was stopped
execute if score @s[team=uBlue] mermaidDetect matches 1 run scoreboard players set @a[team=uBlue] mermaidheal 1

#give regen
execute as @a[team=uBlue] run scoreboard players operation @s mermaidhealbuffer = @s mermaidheal
execute as @a[team=uBlue] run scoreboard players operation @s mermaidhealbuffer %= mermaidHealingConstant constant

#remove regen after one tick
execute as @a[team=uBlue,scores={mermaidtoggle=0}] run effect clear @s regeneration
execute as @a[team=uBlue,scores={mermaidtoggle=0..}] run scoreboard players remove @s mermaidtoggle 1