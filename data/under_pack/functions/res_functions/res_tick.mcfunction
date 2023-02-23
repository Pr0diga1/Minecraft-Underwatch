#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=res] unless entity @s[tag=res_dead] unless entity @s[x=617,y=43,z=-12,dx=14,dz=8,dy=5] unless entity @s[x=533,y=43,z=-5,dx=-14,dz=-8,dy=5] run function under_pack:general_functions/general_classloop

#lower the unlock timer when the game is active
execute if score res_grace timer matches ..0 if score res_unlock points matches ..999 run scoreboard players add res_unlock points 1

#when the point is unlocked
execute if score res_unlock points matches 999 run bossbar set count:res_unlock visible false
execute if score res_unlock points matches 999 run bossbar set count:res visible true
execute if score res_unlock points matches 999 run title @a title {"text":"point unlocked"}

#update bossbar
execute store result bossbar count:res_unlock value run scoreboard players get res_unlock points

#updates the point for the tick
execute if score res_unlock points matches 1000.. run function under_pack:res_functions/res_point

#actionbar for telling players when they will respawn
execute as @a[tag=res,tag=res_dead] run title @s actionbar {"text":"You died!","color":"gold"}

#did a team win on kills this tick?
execute unless entity @a[tag=res,team=uRed,gamemode=adventure] run scoreboard players set res_winning team 1
execute unless entity @a[tag=res,team=uBlue,gamemode=adventure] run scoreboard players set res_winning team 0

#runs the tally if a team won
execute if score res_winning team matches 0.. run function under_pack:res_functions/res_tally

#sets the scoreboard
scoreboard players operation RED pointscapped = res_red_wins points
scoreboard players operation BLUE pointscapped = res_blue_wins points

#runs class changing system
function under_pack:class_functions/ui/checks
