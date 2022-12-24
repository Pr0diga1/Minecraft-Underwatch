#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=gazebo] unless entity @s[tag=gazebo_dead] unless entity @s[x=-1590,y=56,z=-577,dx=14,dz=8,dy=5] unless entity @s[x=-1673,y=56,z=-570,dx=-14,dz=-8,dy=5] run function under_pack:general_functions/general_classloop

#sets a buffer to whoever has control of the point
scoreboard players operation gazeboBuffer team = gazebo team
#updates the point for the tick
function under_pack:gazebo_functions/gazebo_point
#resets the clock if ownership of the point changed
execute unless score gazeboBuffer team = gazebo team run scoreboard players set gazebo timer 0

#every 1.2 seconds, run the percent add function
execute if score gazebo timer matches 24 if score gazebo team matches 0 if score red_gazebo points matches ..98 run scoreboard players add red_gazebo points 1
execute if score gazebo timer matches 24 if score gazebo team matches 1 if score blue_gazebo points matches ..98 run scoreboard players add blue_gazebo points 1

#activate ot when either team hits 99
execute if score red_gazebo points matches 99 if score gazebo team matches 0 run scoreboard players set gazebo_overtime_toggle swag 1
execute if score blue_gazebo points matches 99 if score gazebo team matches 1 run scoreboard players set gazebo_overtime_toggle swag 1

#getting the 100th point
execute if score red_gazebo points matches 99 if score gazebo_overtime timer matches 0 run scoreboard players add red_gazebo points 1
execute if score blue_gazebo points matches 99 if score gazebo_overtime timer matches 0 run scoreboard players add blue_gazebo points 1

#show the ot bossbar if ot is active
execute if score gazebo_overtime_toggle swag matches 1 run bossbar set count:gazebo_ot visible true
execute if score gazebo_overtime_toggle swag matches 0 run bossbar set count:gazebo_ot visible false

#updates bossbars
execute store result bossbar count:gazebo_blue value run scoreboard players get blue_gazebo points
execute store result bossbar count:gazebo_red value run scoreboard players get red_gazebo points
execute store result bossbar count:gazebo_ot value run scoreboard players get gazebo_overtime timer

#overtime naturally deteriorates
execute if score gazebo_overtime_toggle swag matches 1 if score gazebo_overtime timer matches 1.. run scoreboard players remove gazebo_overtime timer 1

#overtime goes back to full when the team that does not have 99 has a player on the point
execute if score red_gazebo points matches 99 if score gazebo team matches 0 unless score on_point_gazebo_blue player_num matches 0 run scoreboard players set gazebo_overtime timer 60
execute if score blue_gazebo points matches 99 if score gazebo team matches 1 unless score on_point_gazebo_red player_num matches 0 run scoreboard players set gazebo_overtime timer 60

#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for red
execute if score red_gazebo points matches 99 if score gazebo team matches 1 unless score gazeboBuffer team = gazebo team run scoreboard players set gazebo_overtime_toggle swag 0
execute if score red_gazebo points matches 99 if score gazebo team matches 1 unless score gazeboBuffer team = gazebo team run scoreboard players set gazebo_overtime timer 60
#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for blue
execute if score blue_gazebo points matches 99 if score gazebo team matches 0 unless score gazeboBuffer team = gazebo team run scoreboard players set gazebo_overtime_toggle swag 0
execute if score blue_gazebo points matches 99 if score gazebo team matches 0 unless score gazeboBuffer team = gazebo team run scoreboard players set gazebo_overtime timer 60

#resets timer to start another cycle
execute if score gazebo timer matches 24 run scoreboard players set gazebo timer 0

#ot hitting 0 immediately causes a point refresh event
execute if score gazebo_overtime timer matches 0 run scoreboard players set gazebo timer 23

#iterates the timer up 1
scoreboard players add gazebo timer 1

#increases the death timer for dead players
execute as @a[tag=gazebo,tag=gazebo_dead] run scoreboard players add @s deathTimer 1

#creates a buffer that stores seconds instead of TickToSecond
#buffer = deathTimer
execute as @a[tag=gazebo,tag=gazebo_dead] run scoreboard players operation @s deathTimerBuffer = @s deathTimer
#buffer converted from ticks to seconds
execute as @a[tag=gazebo,tag=gazebo_dead] run scoreboard players operation @s deathTimerBuffer /= TickToSecond constant
#second buffer = first buffer
execute as @a[tag=gazebo,tag=gazebo_dead] run scoreboard players operation @s deathTimerBufferBuffer = @s deathTimerBuffer 
#first buffer is now 10
execute as @a[tag=gazebo,tag=gazebo_dead] run scoreboard players operation @s deathTimerBuffer = TheNumberTen constant
# 10 - the number of seconds that have past, gives you number of seconds left
execute as @a[tag=gazebo,tag=gazebo_dead] run scoreboard players operation @s deathTimerBuffer -= @s deathTimerBufferBuffer
#actionbar for telling players when they will respawn
execute as @a[tag=gazebo,tag=gazebo_dead] run title @s actionbar ["",{"text":"Respawn in: ","color":"gold"},{"score":{"name":"@s","objective":"deathTimerBuffer"},"color":"red"},{"text":" seconds","color":"gold"}]

#resets players when they have been dead for 10 seconds
#sets them to adventure
execute as @a[tag=gazebo,tag=gazebo_dead] if score @s deathTimer matches 200.. run gamemode adventure @s
#tp them to their spanws
execute as @a[tag=gazebo,tag=gazebo_dead,team=uRed] if score @s deathTimer matches 200.. run tp @s -1578 59 -574
execute as @a[tag=gazebo,tag=gazebo_dead,team=uBlue] if score @s deathTimer matches 200.. run tp @s -1685 59 -573
#tells them they respawned 
execute as @a[tag=gazebo,tag=gazebo_dead] if score @s deathTimer matches 200.. run title @s actionbar {"text":"Respawned","color":"gold"}
#run the general respawn
execute as @a[tag=gazebo,tag=gazebo_dead] if score @s deathTimer matches 200.. run function under_pack:general_functions/general_respawn
#remove dead tag
execute as @a[tag=gazebo,tag=gazebo_dead] if score @s deathTimer matches 200.. run tag @s remove gazebo_dead
#reset their deathtimer
execute as @a[tag=gazebo] if score @s deathTimer matches 200.. run scoreboard players set @s deathTimer 0

#runs the score tracker if a team wins a round
execute if score red_gazebo points matches 100 run function under_pack:gazebo_functions/gazebo_tally
execute if score blue_gazebo points matches 100 run function under_pack:gazebo_functions/gazebo_tally

#resistance in spawns
execute as @a[team=uRed,x=-1590,y=56,z=-577,dx=14,dz=8,dy=5,tag=gazebo] run effect give @s resistance 1 6 false
execute as @a[team=uBlue,x=-1673,y=56,z=-570,dx=-14,dz=-8,dy=5,tag=gazebo] run effect give @s resistance 1 6 false
#cant enter enemy spawns
execute as @a[team=uBlue,x=-1590,y=56,z=-577,dx=14,dz=8,dy=5,tag=gazebo] at @s run tp @s ~-1 ~ ~
execute as @a[team=uRed,x=-1673,y=56,z=-570,dx=-14,dz=-8,dy=5,tag=gazebo] at @s run tp @s ~1 ~ ~

#runs class changing system
function under_pack:class_functions/ui/checks
