#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=park] unless entity @s[tag=park_dead] unless entity @s[x=617,y=43,z=-12,dx=14,dz=8,dy=5] unless entity @s[x=533,y=43,z=-5,dx=-14,dz=-8,dy=5] run function under_pack:general_functions/general_classloop

#is a player on point
execute as @a[tag=park] if entity @s[x=571,y=43,z=-13,dx=9,dy=2,dz=9,tag=park,gamemode=adventure] run scoreboard players set @s onPoint 1
execute as @a[tag=park] unless entity @s[x=571,y=43,z=-13,dx=9,dy=2,dz=9,tag=park,gamemode=adventure] run scoreboard players set @s onPoint 0

#lower the unlock timer when the game is active
execute if score park_grace timer matches ..0 if score park_unlock points matches ..499 run scoreboard players add park_unlock points 1

#when the point is unlocked
execute if score park_unlock points matches 499 run bossbar set count:park_unlock visible false
execute if score park_unlock points matches 499 run bossbar set count:park visible true

#update bossbar
execute store result bossbar count:park_unlock value run scoreboard players get park_unlock points

#updates the point for the tick
execute if score park_unlock points matches 500.. run function under_pack:park_functions/park_point

#actionbar for telling players when they will respawn
execute as @a[tag=park,tag=park_dead] run title @s actionbar {"text":"You died!","color":"gold"}

#did a team win on kills this tick?
execute unless entity @a[tag=park,team=uRed,gamemode=adventure] run scoreboard players set park_winning team 1
execute unless entity @a[tag=park,team=uBlue,gamemode=adventure] run scoreboard players set park_winning team 0

#runs the tally if a team won
execute if score park_winning team matches 0.. run function under_pack:park_functions/park_tally

#sets the scoreboard
scoreboard players operation RED pointscapped = park_red_wins points
scoreboard players operation BLUE pointscapped = park_blue_wins points

#runs class changing system
function under_pack:class_functions/ui/checks
