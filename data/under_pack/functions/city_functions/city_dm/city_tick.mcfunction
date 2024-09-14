#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=city] unless entity @s[tag=city_dead] run function under_pack:general_functions/general_classloop

#lower the unlock timer when the game is active
execute if score city_grace timer matches ..0 if score city_unlock points matches ..999 run scoreboard players add city_unlock points 1

#when the point is unlocked
execute if score city_unlock points matches 999 run bossbar set count:city_unlock visible false
execute if score city_unlock points matches 999 run bossbar set count:city visible true
execute if score city_unlock points matches 999 run title @a title {"text":"point unlocked"}

#update bossbar
execute store result bossbar count:city_unlock value run scoreboard players get city_unlock points

#updates the point for the tick
execute if score city_unlock points matches 1000.. run function under_pack:city_functions/city_dm/city_point

#actionbar for telling players when they will respawn
execute as @a[tag=city,tag=city_dead] run title @s actionbar {"text":"You died!","color":"gold"}

#did a team win on kills this tick?
execute unless entity @a[tag=city,team=uRed,gamemode=adventure] run scoreboard players set city_winning team 1
execute unless entity @a[tag=city,team=uBlue,gamemode=adventure] run scoreboard players set city_winning team 0

#runs the tally if a team won
execute if score city_winning team matches 0.. run function under_pack:city_functions/city_dm/city_tally

#sets the scoreboard
scoreboard players operation RED pointscapped = city_red_wins points
scoreboard players operation BLUE pointscapped = city_blue_wins points

#runs class changing system
function under_pack:class_functions/ui/checks
