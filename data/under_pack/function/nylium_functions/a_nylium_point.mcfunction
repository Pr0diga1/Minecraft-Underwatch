#finds the amount of players on the point for each team and stores it
execute store result score on_point_lake_red player_num if entity @a[x=-506,y=76,z=-524,dx=8,dy=1,dz=11,team=uRed,tag=lake,gamemode=adventure,scores={cantCap=0}]
execute store result score on_point_lake_blue player_num if entity @a[x=-506,y=76,z=-524,dx=8,dy=1,dz=11,team=uBlue,tag=lake,gamemode=adventure,scores={cantCap=0}]

#if blue team is on the point and red team isn't, update the point's value
#if a blue person, but not a red one is on the point and the point is at 1, just set it to zero
execute if score on_point_lake_blue player_num matches 1.. if score on_point_lake_red player_num matches 0 if score cap_lake points matches 1 run scoreboard players remove cap_lake points 1
#removes 2 w/ one or more players on the point
execute if score on_point_lake_blue player_num matches 1.. if score on_point_lake_red player_num matches 0 if score cap_lake points matches 2.. run scoreboard players remove cap_lake points 2
#removes 1 w/ two or more players on the point
execute if score on_point_lake_blue player_num matches 2.. if score on_point_lake_red player_num matches 0 if score cap_lake points matches 1.. run scoreboard players remove cap_lake points 1
#removes 1 w/ three or more players on the point
execute if score on_point_lake_blue player_num matches 3.. if score on_point_lake_red player_num matches 0 if score cap_lake points matches 1.. run scoreboard players remove cap_lake points 1

#if red team is on the point and blue team isn't, update the point's value
#if a red person, but not a blue one is on the point and the point is at 1, just set it to zero
execute if score on_point_lake_red player_num matches 1.. if score on_point_lake_blue player_num matches 0 if score cap_lake points matches 319 run scoreboard players add cap_lake points 1
#removes 2 w/ one or more players on the point
execute if score on_point_lake_red player_num matches 1.. if score on_point_lake_blue player_num matches 0 if score cap_lake points matches ..318 run scoreboard players add cap_lake points 2
#removes 1 w/ two or more players on the point
execute if score on_point_lake_red player_num matches 2.. if score on_point_lake_blue player_num matches 0 if score cap_lake points matches ..319 run scoreboard players add cap_lake points 1
#removes 1 w/ three or more players on the point
execute if score on_point_lake_red player_num matches 3.. if score on_point_lake_blue player_num matches 0 if score cap_lake points matches ..319 run scoreboard players add cap_lake points 1

#bar is blue team's if bar hits 0
execute if score cap_lake points matches 0 run scoreboard players set lake team 1
#bar is red team's if bar hits 320
execute if score cap_lake points matches 320 run scoreboard players set lake team 0

#changes the color of the bossbar based off of the team in possession of the point
execute if score lake team matches 0 run bossbar set count:lake color red
execute if score lake team matches 1 run bossbar set count:lake color blue

#updates the bossbar
execute store result bossbar count:lake value run scoreboard players get cap_lake points