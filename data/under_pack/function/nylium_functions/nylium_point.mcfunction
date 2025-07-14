#finds the amount of players on the point for each team and stores it
execute store result score on_point_nylium_red player_num if entity @a[x=-559,y=63,z=87,dx=9,dy=3,dz=9,team=uRed,tag=nylium,gamemode=adventure,scores={cantCap=0}]
execute store result score on_point_nylium_blue player_num if entity @a[x=-559,y=63,z=87,dx=9,dy=3,dz=9,team=uBlue,tag=nylium,gamemode=adventure,scores={cantCap=0}]

#if blue team is on the point and red team isn't, update the point's value
#if a blue person, but not a red one is on the point and the point is at 1, just set it to zero
execute if score on_point_nylium_blue player_num matches 1.. if score on_point_nylium_red player_num matches 0 if score cap_nylium points matches 1 run scoreboard players remove cap_nylium points 1
#removes 2 w/ one or more players on the point
execute if score on_point_nylium_blue player_num matches 1.. if score on_point_nylium_red player_num matches 0 if score cap_nylium points matches 2.. run scoreboard players remove cap_nylium points 2
#removes 1 w/ two or more players on the point
execute if score on_point_nylium_blue player_num matches 2.. if score on_point_nylium_red player_num matches 0 if score cap_nylium points matches 1.. run scoreboard players remove cap_nylium points 1
#removes 1 w/ three or more players on the point
execute if score on_point_nylium_blue player_num matches 3.. if score on_point_nylium_red player_num matches 0 if score cap_nylium points matches 1.. run scoreboard players remove cap_nylium points 1

#if red team is on the point and blue team isn't, update the point's value
#if a red person, but not a blue one is on the point and the point is at 1, just set it to zero
execute if score on_point_nylium_red player_num matches 1.. if score on_point_nylium_blue player_num matches 0 if score cap_nylium points matches 319 run scoreboard players add cap_nylium points 1
#removes 2 w/ one or more players on the point
execute if score on_point_nylium_red player_num matches 1.. if score on_point_nylium_blue player_num matches 0 if score cap_nylium points matches ..318 run scoreboard players add cap_nylium points 2
#removes 1 w/ two or more players on the point
execute if score on_point_nylium_red player_num matches 2.. if score on_point_nylium_blue player_num matches 0 if score cap_nylium points matches ..319 run scoreboard players add cap_nylium points 1
#removes 1 w/ three or more players on the point
execute if score on_point_nylium_red player_num matches 3.. if score on_point_nylium_blue player_num matches 0 if score cap_nylium points matches ..319 run scoreboard players add cap_nylium points 1

#bar is blue team's if bar hits 0
execute if score cap_nylium points matches 0 run scoreboard players set nylium team 1
#bar is red team's if bar hits 320
execute if score cap_nylium points matches 320 run scoreboard players set nylium team 0

#changes the color of the bossbar based off of the team in possession of the point
execute if score nylium team matches 0 run bossbar set count:nylium color red
execute if score nylium team matches 1 run bossbar set count:nylium color blue

#updates the bossbar
execute store result bossbar count:nylium value run scoreboard players get cap_nylium points