#set people to adventure
gamemode adventure @a[tag=gazebo]
#put people on white team
team join white @s
#unselect class
scoreboard players set @s class 0
#give ungame tag
tag @s add ungame
#clear
effect clear @s
clear @s
#removes xp
experience set @s 0 levels
experience set @s 0 points