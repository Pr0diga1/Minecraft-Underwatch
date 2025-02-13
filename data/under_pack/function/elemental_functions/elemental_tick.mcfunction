execute if entity @s[team=uBlue] run function under_pack:elemental_functions/blue_tick
execute if entity @s[team=uRed] run function under_pack:elemental_functions/red_tick

#fire tick stuff
scoreboard players operation @s elementalFireBuffer = @s elementalFireTimer
scoreboard players set @s elementalFireTimer 0

#buffer timing
execute if score @s elementalBarTimer matches ..19 unless score @s elementalBarBuffer = @s elementalBar run scoreboard players set @s elementalBarTimer 20
execute if score @s elementalBarTimer matches 1.. run scoreboard players remove @s elementalBarTimer 1
#giving points
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches ..734 run scoreboard players add @s elementalBar 5
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches ..734 run experience add @s 5 points
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches 736..740 run scoreboard players set @s elementalBar 741
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches 736..740 run experience set @s 100 levels
execute if score @s elementalBarTimer matches 0 if score @s elementalBar matches 736..740 run experience set @s 741 points

#bar buffer
scoreboard players operation @s elementalBarBuffer = @s elementalBar

execute if score fireheld buffer matches 1.. run scoreboard players remove fireheld buffer 1
execute if score fireheld buffer matches ..1 run item modify entity @s hotbar.0 under_pack:elemental/endglint
