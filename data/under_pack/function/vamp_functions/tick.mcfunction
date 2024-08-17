#cant be tainted tag
execute if score @s ability1 matches 0 run tag @s[tag=!vamp] add vamp

#normal bite detect
execute if entity @s[team=uRed,scores={ability1=0}] unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{vamptaint:1b}}}],SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_data":{vamptaint:1b}}}}] if entity @a[dx=0,team=uBlue] at @s run function under_pack:vamp_functions/bite_red
execute if entity @s[team=uBlue,scores={ability1=0}] unless entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{vamptaint:1b}}}],SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_data":{vamptaint:1b}}}}] if entity @a[dx=0,team=uRed] at @s run function under_pack:vamp_functions/bite_blue

#tainted bite detect
execute if score @s vampblood matches 74.. if score @s ability1 matches 0 if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{vamptaint:1b}}}],SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_data":{vamptaint:1b}}}}] if entity @s[dx=0,tag=!vamp] at @s run function under_pack:vamp_functions/taint

#tainted person tick
execute if entity @s[team=uRed] as @a[tag=taintedred] at @s run function under_pack:vamp_functions/tainted
execute if entity @s[team=uBlue] as @a[tag=taintedrblue] at @s run function under_pack:vamp_functions/tainted

#cap blood meter
execute if entity @s[nbt={XpLevel:101}] run experience set @s 742 points
execute if entity @s[nbt={XpLevel:101}] run experience set @s 100 levels
execute if score @s vampblood matches 742.. run scoreboard players set @s vampblood 742

#remove cant be tainted tag
execute if score @s ability1 matches 1.. run tag @s[tag=vamp] remove vamp
