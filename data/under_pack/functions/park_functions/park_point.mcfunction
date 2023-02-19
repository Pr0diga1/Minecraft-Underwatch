#finds the amount of players on the point for each team and stores it
execute store result score on_point_park_red player_num if entity @a[x=571,y=43,z=-13,dx=9,dy=2,dz=9,team=uRed,tag=park,gamemode=adventure,scores={cantCap=0}]
execute store result score on_point_park_blue player_num if entity @a[x=571,y=43,z=-13,dx=9,dy=2,dz=9,team=uBlue,tag=park,gamemode=adventure,scores={cantCap=0}]

#if blue team is on the point and red team isn't, update the point's value
#removes 2 w/ one or more players on the point
execute if score on_point_park_blue player_num matches 1.. if score on_point_park_red player_num matches 0 if score cap_park points matches 1.. run scoreboard players remove cap_park points 1

#if red team is on the point and blue team isn't, update the point's value
#removes 2 w/ one or more players on the point
execute if score on_point_park_red player_num matches 1.. if score on_point_park_blue player_num matches 0 if score cap_park points matches ..319 run scoreboard players add cap_park points 1

#bar is blue team's if bar hits 0
execute if score cap_park points matches 0 run scoreboard players set park_winning team 1
#bar is red team's if bar hits 320
execute if score cap_park points matches 320 run scoreboard players set park_winning team 0

#change bossbar color
execute if score cap_park points matches 159 run bossbar set count:park color blue
execute if score cap_park points matches 161 run bossbar set count:park color red

#updates the bossbar
execute store result bossbar count:park value run scoreboard players get cap_park points