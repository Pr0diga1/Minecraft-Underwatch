#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=ruin] unless entity @s[tag=ruin_dead] run function under_pack:general_functions/general_classloop

#lower the unlock timer when the game is active
execute if score ruin_grace timer matches ..0 if score ruin_unlock points matches ..999 run scoreboard players add ruin_unlock points 1

#when the point is unlocked
execute if score ruin_unlock points matches 999 run bossbar set count:ruin_unlock visible false
execute if score ruin_unlock points matches 999 run bossbar set count:ruin visible true
execute if score ruin_unlock points matches 999 run title @a title {"text":"point unlocked"}

#update bossbar
execute store result bossbar count:ruin_unlock value run scoreboard players get ruin_unlock points

#updates the point for the tick
execute if score ruin_unlock points matches 1000.. run function under_pack:ruin_functions/ruin_point

#actionbar for telling players when they will respawn
execute as @a[tag=ruin,tag=ruin_dead] run title @s actionbar {"text":"You died!","color":"gold"}

#did a team win on kills this tick?
execute unless entity @a[tag=ruin,team=uRed,gamemode=adventure] run scoreboard players set ruin_winning team 1
execute unless entity @a[tag=ruin,team=uBlue,gamemode=adventure] run scoreboard players set ruin_winning team 0

#runs the tally if a team won
execute if score ruin_winning team matches 0.. run function under_pack:ruin_functions/ruin_tally

#sets the scoreboard
scoreboard players operation RED pointscapped = ruin_red_wins points
scoreboard players operation BLUE pointscapped = ruin_blue_wins points

#runs class changing system
function under_pack:class_functions/ui/checks
