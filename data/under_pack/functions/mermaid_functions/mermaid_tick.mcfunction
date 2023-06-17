#mist tick
execute if score @s mermaidmistbuffer matches 1.. run scoreboard players remove @s mermaidmistbuffer 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run scoreboard players add @s mermaidmist 1
execute if score @s mermaidmistbuffer matches 0 unless score @s mermaidmist matches 74.. run experience add @s 10
execute if score @s mermaidmist matches 74 run experience set @s 741 points
item replace entity @s hotbar.1 with ender_eye{mermaidmist:1b,display:{Name:'{"text":"Nautical Mist","color":"dark_blue"}'}} 2
#potion tick
execute if entity @s[team=uRed] if entity @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b,red:1b}}}] unless entity @e[limit=1,sort=nearest,tag=mermaidtrack,type=marker,tag=red] run function under_pack:mermaid_functions/mermaid_tide_throw
execute if entity @s[team=uRed] if entity @e[limit=1,sort=nearest,tag=mermaidtrack,type=marker,tag=red] unless entity @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b,red:1b}}}] run function under_pack:mermaid_functions/mermaid_tide_tick

execute if entity @s[team=uBlue] if entity @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b,blue:1b}}}] unless entity @e[limit=1,sort=nearest,tag=mermaidtrack,type=marker,tag=blue] run function under_pack:mermaid_functions/mermaid_tide_throw
execute if entity @s[team=uBlue] if entity @e[limit=1,sort=nearest,tag=mermaidtrack,type=marker,tag=blue] unless entity @e[limit=1,sort=nearest,nbt={Item:{tag:{mermaidpotion:1b,blue:1b}}}] run function under_pack:mermaid_functions/mermaid_tide_tick
#potion cooldow
execute if score @s ability1 matches 1..300 run scoreboard players remove @s ability1 1
execute if entity @s[team=uRed] if score @s ability1 matches 0 run item replace entity @s hotbar.2 with splash_potion{mermaidpotion:1b,red:1b,display:{Name:'{"text":"Tide Pool","color":"gray"}',Lore:['{"text":"Slows Enemies"}']},HideFlags:32,CustomPotionColor:1591008} 1
execute if entity @s[team=uBlue] if score @s ability1 matches 0 run item replace entity @s hotbar.2 with splash_potion{mermaidpotion:1b,blue:1b,display:{Name:'{"text":"Tide Pool","color":"gray"}',Lore:['{"text":"Slows Enemies"}']},HideFlags:32,CustomPotionColor:1591008} 1
function under_pack:mermaid_functions/mermaid_cooldown

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