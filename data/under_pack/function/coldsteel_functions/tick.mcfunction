#bnin carrots
execute if entity @s[team=uRed,nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{bnin:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bnin:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/bnin_red
execute if entity @s[team=uBlue,nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{bnin:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bnin:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/bnin_blue

#ender pearl velocity
execute if entity @s[team=uRed] if entity @e[tag=!novelo,type=minecraft:ender_pearl,nbt={Item:{components:{"minecraft:custom_data":{coldtp:1b,red:1b}}}}] run scoreboard players set @s ability2 80
execute if entity @s[team=uBlue] if entity @e[tag=!novelo,type=minecraft:ender_pearl,nbt={Item:{components:{"minecraft:custom_data":{coldtp:1b,blue:1b}}}}] run scoreboard players set @s ability2 80
execute if entity @s[team=uRed] as @e[tag=!novelo,type=minecraft:ender_pearl,nbt={Item:{components:{"minecraft:custom_data":{coldtp:1b,red:1b}}}}] run function under_pack:coldsteel_functions/tp_velo
execute if entity @s[team=uBlue] as @e[tag=!novelo,type=minecraft:ender_pearl,nbt={Item:{components:{"minecraft:custom_data":{coldtp:1b,blue:1b}}}}] run function under_pack:coldsteel_functions/tp_velo

#special power
execute if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{coldpower:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{coldpower:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/power

function under_pack:coldsteel_functions/cooldown