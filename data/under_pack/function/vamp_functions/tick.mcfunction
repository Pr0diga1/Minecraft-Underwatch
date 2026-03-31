#cant be tainted tag
execute if score @s ability1 matches 0 run tag @s[tag=!vamp] add vamp

#tainted bite detect
#execute at @s if score @s ability1 matches 0 if entity @s[nbt={Inventory:[{Slot:1b,components:{"minecraft:custom_data":{vamptaint:1b}}}],SelectedItem:{id:"minecraft:ghast_tear",components:{"minecraft:custom_data":{vamptaint:1b}}}}] anchored feet positioned ~-.4 ~ ~-.4 if entity @a[dx=-.2,dy=.8,dz=-.2,tag=!vamp,limit=1,sort=nearest] run function under_pack:vamp_functions/taint

#tainted person tick
execute if entity @s[team=uRed] as @a[tag=taintedred] at @s run function under_pack:vamp_functions/tainted_red
execute if entity @s[team=uBlue] as @a[tag=taintedblue] at @s run function under_pack:vamp_functions/tainted_blue

#if death reset tainted
execute if score @s[team=uRed] uDeaths matches 1.. as @a[tag=taintedred] run function under_pack:vamp_functions/taint_reset
execute if score @s[team=uBlue] uDeaths matches 1.. as @a[tag=taintedblue] run function under_pack:vamp_functions/taint_reset


#cap blood meter
execute if entity @s[nbt={XpLevel:101}] run experience set @s 742 points
execute if entity @s[nbt={XpLevel:101}] run experience set @s 100 levels
execute if score @s vampblood matches 742.. run scoreboard players set @s vampblood 742

#prevent 99 xp bug
execute if entity @s[nbt={XpLevel:99}] run experience set @s 0 points
execute if entity @s[nbt={XpLevel:99}] run experience set @s 100 levels

#remove cant be tainted tag
execute if score @s ability1 matches 1.. run tag @s[tag=vamp] remove vamp

#attack buffer
execute if score @s vampattack matches 1.. if score @s vampattack = @s vampattackbuffer run function under_pack:vamp_functions/attack_ended
scoreboard players operation @s vampattackbuffer = @s vampattack

#ticky
execute as @s[team=uRed] run function under_pack:vamp_functions/tick_red
execute as @s[team=uBlue] run function under_pack:vamp_functions/tick_blue


function under_pack:vamp_functions/cooldown