#carrot on stick
execute as @s[nbt={Inventory:[{Slot:1b,tag:{elementalWind:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalWind:1b}}},scores={reset=1..}] if score @s elementalBar matches 300.. run function under_pack:elemental_functions/elemental_wind
execute as @s[nbt={Inventory:[{Slot:2b,tag:{elementalWater:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalWater:1b}}},scores={reset=1..}] if score @s elementalBar matches 1.. if score @s elementalWaterState matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:elemental_functions/elemental_water_create
execute as @s[nbt={Inventory:[{Slot:2b,tag:{elementalWater:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalWater:1b}}},scores={reset=1..}] if score @s elementalBar matches 1.. if score @s elementalWaterState matches 1 run function under_pack:elemental_functions/elemental_water_destroy
execute as @s[nbt={Inventory:[{Slot:3b,tag:{elementalEarth:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalEarth:1b}}},scores={reset=1..}] if score @s elementalBar matches 240.. at @s run function under_pack:elemental_functions/elemental_earth

scoreboard players reset @s reset

#wind tick stuff
execute if score @s elementalWindTimer matches 1.. run scoreboard players remove @s elementalWindTimer 1
execute if score @s elementalWindTimer matches 48 run effect clear @s levitation
execute if score @s elementalWindTimer matches 1 run item replace entity @s armor.chest with air

#water tick stuff
execute as @s[team=uRed] if score @s elementalWaterState matches 1 at @s at @e[type=marker,tag=redElementalWater,limit=1,sort=nearest] run function under_pack:elemental_functions/elemental_water_tick
execute as @s[team=uBlue] if score @s elementalWaterState matches 1 at @s at @e[type=marker,tag=blueElementalWater,limit=1,sort=nearest] run function under_pack:elemental_functions/elemental_water_tick

#earth block levitation
execute as @s[team=uRed,scores={elementalEarthTimer=1..}] at @s as @e[type=armor_stand,tag=redElementalEarth,limit=1,sort=nearest] at @s run tp @s ~ ~.2 ~
execute as @s[team=uBlue,scores={elementalEarthTimer=1..}] at @s as @e[type=armor_stand,tag=blueElementalEarth,limit=1,sort=nearest] at @s run tp @s ~ ~.2 ~
execute as @s[scores={elementalEarthTimer=1..}] run scoreboard players remove @s elementalEarthTimer 1
execute as @s[scores={elementalEarthTimer=0}] at @s run function under_pack:elemental_functions/elemental_earth_toss

#giving energy back
#buffer timing
execute if score @s[tag=!elementalLocked] elementalBar matches 0 run scoreboard players set @s elementalBarTimer 41
execute if score @s[tag=!elementalLocked] elementalBar matches 0 run tag @s add elementalLocked
execute if score @s elementalBarTimer matches ..10 unless score @s elementalBarBuffer = @s elementalBar run scoreboard players set @s elementalBarTimer 11
execute if score @s elementalBarTimer matches 1.. run scoreboard players remove @s elementalBarTimer 1
execute if score @s[tag=elementalLocked] elementalBarTimer matches 0 run tag @s remove elementalLocked
#giving points
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches ..737 run scoreboard players add @s elementalBar 3
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches 738..739 run scoreboard players set @s elementalBar 740

#xp bar logic
scoreboard players operation @s elementalBarBuffer -= @s elementalBar
function under_pack:elemental_functions/elemental_bar_update

#bar buffer
scoreboard players operation @s elementalBarBuffer = @s elementalBar