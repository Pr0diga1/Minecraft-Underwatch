#finds the amount of players on the point for each team and stores it
execute store result score on_point_city_red player_num if entity @a[x=45,y=54,z=-1077,dx=10,dy=2,dz=6,team=uRed,tag=city,gamemode=adventure,scores={cantCap=0}]
execute store result score on_point_city_blue player_num if entity @a[x=45,y=54,z=-1077,dx=10,dy=2,dz=6,team=uBlue,tag=city,gamemode=adventure,scores={cantCap=0}]

#is a player on point
execute as @a[tag=city] if entity @s[x=45,y=54,z=-1077,dx=10,dy=2,dz=6,tag=city,gamemode=adventure] run scoreboard players set @s onPoint 1
execute as @a[tag=city] unless entity @s[x=45,y=54,z=-1077,dx=10,dy=2,dz=6,tag=city,gamemode=adventure] run scoreboard players set @s onPoint 0

#if blue team is on the point and red team isn't, update the point's value
#removes 2 w/ one or more players on the point
execute if score on_point_city_blue player_num matches 1.. if score on_point_city_red player_num matches 0 if score cap_city points matches 1.. run scoreboard players remove cap_city points 1

#if red team is on the point and blue team isn't, update the point's value
#removes 2 w/ one or more players on the point
execute if score on_point_city_red player_num matches 1.. if score on_point_city_blue player_num matches 0 if score cap_city points matches ..319 run scoreboard players add cap_city points 1

#bar is blue team's if bar hits 0
execute if score cap_city points matches 0 run scoreboard players set city_winning team 1
#bar is red team's if bar hits 320
execute if score cap_city points matches 320 run scoreboard players set city_winning team 0

#change bossbar color
execute if score cap_city points matches 159 run bossbar set count:city color blue
execute if score cap_city points matches 161 run bossbar set count:city color red

#updates the bossbar
execute store result bossbar count:city value run scoreboard players get cap_city points