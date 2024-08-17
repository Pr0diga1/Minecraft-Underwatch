#bnin carrots
execute if entity @s[team=uRed,nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{bnin:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bnin:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/bnin_red
execute if entity @s[team=uBlue,nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{bnin:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{bnin:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/bnin_blue

#ender pearl velocity
execute if entity @s[nbt={Inventory:[{Slot:2b,components:{"minecraft:custom_data":{coldtp:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{coldtp:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/tp

#special power
execute if entity @s[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{coldpower:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{coldpower:1b}}}},scores={reset=1..}] as @s run function under_pack:coldsteel_functions/power

#execute at @s as @e[tag=!nomove,tag=red,tag=coldtp] rotated as @a[team=uRed,scores={class=18},limit=1,sort=nearest] anchored eyes run function under_pack:ninja_functions/ninja_toss_velo
#execute at @s as @e[tag=!nomove,tag=blue,tag=coldtp] rotated as @a[team=uBlue,scores={class=18},limit=1,sort=nearest] anchored eyes run function under_pack:ninja_functions/ninja_toss_velo

function under_pack:coldsteel_functions/cooldown