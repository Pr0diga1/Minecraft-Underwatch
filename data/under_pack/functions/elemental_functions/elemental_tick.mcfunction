#carrot on stick
execute as @s[nbt={Inventory:[{Slot:1b,tag:{elementalWind:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalWind:1b}}},scores={reset=1..}] if score @s elementalBar matches 300.. run function under_pack:elemental_functions/elemental_wind
execute as @s[nbt={Inventory:[{Slot:2b,tag:{elementalWater:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalWater:1b}}},scores={reset=1..}] if score @s elementalBar matches 1.. if score @s elementalWaterState matches 0 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:elemental_functions/elemental_water_create
execute as @s[nbt={Inventory:[{Slot:2b,tag:{elementalWater:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalWater:1b}}},scores={reset=1..}] if score @s elementalBar matches 1.. if score @s elementalWaterState matches 1 run function under_pack:elemental_functions/elemental_water_destroy
execute as @s[nbt={Inventory:[{Slot:3b,tag:{elementalEarth:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{elementalEarth:1b}}},scores={reset=1..}] if score @s elementalBar matches 240.. at @s run function under_pack:elemental_functions/elemental_earth

scoreboard players reset @s reset

#fire tick stuff
scoreboard players operation @s elementalFireBuffer = @s elementalFireTimer
scoreboard players set @s elementalFireTimer 0
execute as @s[team=uRed] as @a[team=uBlue] if score @s elementalFireHit = ElementalFireTiming constant run function under_pack:elemental_functions/elemental_fire_hit
execute as @s[team=uBlue] as @a[team=uRed] if score @s elementalFireHit = ElementalFireTiming constant run function under_pack:elemental_functions/elemental_fire_hit

#wind tick stuff
execute if score @s elementalWindTimer matches 1.. run scoreboard players remove @s elementalWindTimer 1
execute if score @s elementalWindTimer matches 48 run effect clear @s levitation
execute if score @s elementalWindTimer matches 1 run item replace entity @s armor.chest with air

#water tick stuff
execute as @s[team=uRed] as @a[team=uRed] if score @s elementalWaterHit > ElementalWaterTiming constant run effect clear @s regeneration
execute as @s[team=uRed] as @a[team=uRed] if score @s elementalWaterHit > ElementalWaterTiming constant run scoreboard players set @s elementalWaterHit 0
execute as @s[team=uBlue] as @a[team=uBlue] if score @s elementalWaterHit > ElementalWaterTiming constant run effect clear @s regeneration
execute as @s[team=uBlue] as @a[team=uBlue] if score @s elementalWaterHit > ElementalWaterTiming constant run scoreboard players set @s elementalWaterHit 0
execute as @s[team=uRed] if score @s elementalWaterState matches 1 at @s at @e[type=marker,tag=redElementalWater,limit=1,sort=nearest] run function under_pack:elemental_functions/elemental_water_tick
execute as @s[team=uBlue] if score @s elementalWaterState matches 1 at @s at @e[type=marker,tag=blueElementalWater,limit=1,sort=nearest] run function under_pack:elemental_functions/elemental_water_tick
execute as @s[team=uRed] as @a[team=uRed] if score @s elementalWaterHit = ElementalWaterTiming constant run function under_pack:elemental_functions/elemental_water_heal
execute as @s[team=uBlue] as @a[team=uBlue] if score @s elementalWaterHit = ElementalWaterTiming constant run function under_pack:elemental_functions/elemental_water_heal

#earth block throwing
execute as @s[team=uRed] as @e[tag=redElementalEarth,scores={elementalEarthTimer=1..}] at @s run tp @s ~ ~.18 ~
execute as @s[team=uBlue] as @e[tag=blueElementalEarth,scores={elementalEarthTimer=1..}] at @s run tp @s ~ ~.18 ~

execute as @s[team=uRed] run scoreboard players remove @e[tag=redElementalEarth] elementalEarthTimer 1
execute as @s[team=uBlue] run scoreboard players remove @e[tag=blueElementalEarth] elementalEarthTimer 1

execute as @s[team=uRed] if entity @e[tag=redElementalEarth,scores={elementalEarthTimer=0}] at @s run function under_pack:elemental_functions/elemental_earth_toss
execute as @s[team=uBlue] if entity @e[tag=blueElementalEarth,scores={elementalEarthTimer=0}] at @s run function under_pack:elemental_functions/elemental_earth_toss

execute as @s[team=uRed] as @e[tag=redElementalEarth,scores={elementalEarthTimer=..0}] at @s run function under_pack:elemental_functions/elemental_earth_tick
execute as @s[team=uBlue] as @e[tag=blueElementalEarth,scores={elementalEarthTimer=..0}] at @s run function under_pack:elemental_functions/elemental_earth_tick

#people who got hit by earth
execute as @s[team=uRed] run scoreboard players remove @a[team=uBlue,scores={elementalEarthTimer=1..}] elementalEarthTimer 1
execute as @s[team=uBlue] run scoreboard players remove @a[team=uRed,scores={elementalEarthTimer=1..}] elementalEarthTimer 1

execute as @s[team=uRed] as @a[team=uBlue,scores={elementalEarthTimer=1..}] at @s positioned as @e[type=marker,sort=nearest,tag=elementalStun,limit=1,distance=..3] run tp @s ~ ~ ~
execute as @s[team=uBlue] as @a[team=uRed,scores={elementalEarthTimer=1..}] at @s positioned as @e[type=marker,sort=nearest,tag=elementalStun,limit=1,distance=..3] run tp @s ~ ~ ~

execute as @s[team=uRed] as @a[team=uBlue,scores={elementalEarthTimer=1}] at @s run kill @e[type=marker,sort=nearest,tag=elementalStun,limit=1,distance=..3]
execute as @s[team=uBlue] as @a[team=uRed,scores={elementalEarthTimer=1}] at @s run kill @e[type=marker,sort=nearest,tag=elementalStun,limit=1,distance=..3]

execute as @s[team=uRed] as @a[team=uBlue,scores={elementalEarthTimer=1}] at @s run title @s clear
execute as @s[team=uBlue] as @a[team=uRed,scores={elementalEarthTimer=1}] at @s run title @s clear

#giving energy back
#buffer timing
execute if score @s elementalBarTimer matches ..12 unless score @s elementalBarBuffer = @s elementalBar run scoreboard players set @s elementalBarTimer 13
execute if score @s elementalBarTimer matches 1.. run scoreboard players remove @s elementalBarTimer 1
#giving points
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches ..735 run scoreboard players add @s elementalBar 5
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches 736..739 run scoreboard players set @s elementalBar 740

#xp bar logic
scoreboard players operation @s elementalBarBuffer -= @s elementalBar
function under_pack:elemental_functions/elemental_bar_update

#bar buffer
scoreboard players operation @s elementalBarBuffer = @s elementalBar