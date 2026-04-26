execute as @s[tag=uDead] run return fail

#bnin carrots

#ender pearl velocity
execute if entity @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{coldtp:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{coldtp:1b}}}},scores={reset=1..}] run function under_pack:coldsteel_functions/lunge

#special power

#blast
execute as @s[team=uRed] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, red:1b}}}}] run function under_pack:coldsteel_functions/tp
execute as @s[team=uBlue] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{coldtp:1b, blue:1b}}}}] run function under_pack:coldsteel_functions/tp

#reenable dash
execute as @s[scores={coldsteellunge=0},nbt={OnGround:1b}] run function under_pack:coldsteel_functions/lunge_reset

#execute at @s as @e[tag=!nomove,tag=red,tag=coldtp] rotated as @a[team=uRed,scores={class=18},limit=1,sort=nearest] anchored eyes run function under_pack:ninja_functions/ninja_toss_velo
#execute at @s as @e[tag=!nomove,tag=blue,tag=coldtp] rotated as @a[team=uBlue,scores={class=18},limit=1,sort=nearest] anchored eyes run function under_pack:ninja_functions/ninja_toss_velo

#function under_pack:coldsteel_functions/cooldown