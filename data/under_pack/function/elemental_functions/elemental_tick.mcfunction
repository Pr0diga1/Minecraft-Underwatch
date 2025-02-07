execute if entity @s[team=uBlue] run function under_pack:elemental_functions/blue_tick
execute if entity @s[team=uRed] run function under_pack:elemental_functions/red_tick

#fire tick stuff
scoreboard players operation @s elementalFireBuffer = @s elementalFireTimer
scoreboard players set @s elementalFireTimer 0

#wind tick stuff
execute if score @s elementalWindTimer matches 1.. run scoreboard players remove @s elementalWindTimer 1
execute if score @s elementalWindTimer matches 48 run effect clear @s levitation
execute if score @s elementalWindTimer matches 1 run item replace entity @s armor.chest with air

#buffer timing
execute if score @s elementalBarTimer matches ..12 unless score @s elementalBarBuffer = @s elementalBar run scoreboard players set @s elementalBarTimer 13
execute if score @s elementalBarTimer matches 1.. run scoreboard players remove @s elementalBarTimer 1
#giving points
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches ..735 run scoreboard players add @s elementalBar 5
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches 736..739 run scoreboard players set @s elementalBar 740

#indicator
execute if score @s elementalWaterState matches 1 run title @s actionbar {"color":"blue","text":"Raincloud active"}

#xp bar logic
scoreboard players operation @s elementalBarBuffer -= @s elementalBar
function under_pack:elemental_functions/elemental_bar_update

#bar buffer
scoreboard players operation @s elementalBarBuffer = @s elementalBar

execute if score fireheld buffer matches 1.. run scoreboard players remove fireheld buffer 1
execute if score fireheld buffer matches ..1 run item modify entity @s hotbar.0 under_pack:elemental/endglint
