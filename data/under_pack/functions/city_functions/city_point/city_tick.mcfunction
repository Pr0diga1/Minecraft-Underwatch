#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=city] unless entity @s[tag=city_dead] run function under_pack:general_functions/general_classloop

#sets a buffer to whoever has control of the point
scoreboard players operation cityBuffer team = city team
#updates the point for the tick
function under_pack:city_functions/city_point/city_point
#resets the clock if ownership of the point changed
execute unless score cityBuffer team = city team run scoreboard players set city timer 0

#every 1.2 seconds, run the percent add function
execute if score city timer matches 24 if score city team matches 0 if score red_city points matches ..98 run scoreboard players add red_city points 1
execute if score city timer matches 24 if score city team matches 1 if score blue_city points matches ..98 run scoreboard players add blue_city points 1

#activate ot when either team hits 99
execute if score red_city points matches 99 if score city team matches 0 run scoreboard players set city_overtime_toggle swag 1
execute if score blue_city points matches 99 if score city team matches 1 run scoreboard players set city_overtime_toggle swag 1

#getting the 100th point
execute if score red_city points matches 99 if score city_overtime timer matches 0 if score city team matches 0 run scoreboard players add red_city points 1
execute if score blue_city points matches 99 if score city_overtime timer matches 0 if score city team matches 1 run scoreboard players add blue_city points 1

#show the ot bossbar if ot is active
execute if score city_overtime_toggle swag matches 1 run bossbar set count:city_ot visible true
execute if score city_overtime_toggle swag matches 0 run bossbar set count:city_ot visible false

#updates bossbars
execute store result bossbar count:city_blue value run scoreboard players get blue_city points
execute store result bossbar count:city_red value run scoreboard players get red_city points
execute store result bossbar count:city_ot value run scoreboard players get city_overtime timer

#overtime naturally deteriorates
execute if score city_overtime_toggle swag matches 1 if score city_overtime timer matches 1.. run scoreboard players remove city_overtime timer 1

#overtime goes back to full when the team that does not have 99 has a player on the point
execute if score red_city points matches 99 if score city team matches 0 unless score on_point_city_blue player_num matches 0 run scoreboard players set city_overtime timer 60
execute if score blue_city points matches 99 if score city team matches 1 unless score on_point_city_red player_num matches 0 run scoreboard players set city_overtime timer 60

#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for red
execute if score red_city points matches 99 if score city team matches 1 unless score cityBuffer team = city team run scoreboard players set city_overtime_toggle swag 0
execute if score red_city points matches 99 if score city team matches 1 unless score cityBuffer team = city team run scoreboard players set city_overtime timer 60
#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for blue
execute if score blue_city points matches 99 if score city team matches 0 unless score cityBuffer team = city team run scoreboard players set city_overtime_toggle swag 0
execute if score blue_city points matches 99 if score city team matches 0 unless score cityBuffer team = city team run scoreboard players set city_overtime timer 60

#resets timer to start another cycle
execute if score city timer matches 24 run scoreboard players set city timer 0

#ot hitting 0 immediately causes a point refresh event
execute if score city_overtime timer matches 0 run scoreboard players set city timer 23

#iterates the timer up 1
scoreboard players add city timer 1

#increases the death timer for dead players
execute as @a[tag=city,tag=city_dead] run scoreboard players add @s deathTimer 1

#creates a buffer that stores seconds instead of TickToSecond
#buffer = deathTimer
execute as @a[tag=city,tag=city_dead] run scoreboard players operation @s deathTimerBuffer = @s deathTimer
#buffer converted from ticks to seconds
execute as @a[tag=city,tag=city_dead] run scoreboard players operation @s deathTimerBuffer /= TickToSecond constant
#second buffer = first buffer
execute as @a[tag=city,tag=city_dead] run scoreboard players operation @s deathTimerBufferBuffer = @s deathTimerBuffer 
#first buffer is now 10
execute as @a[tag=city,tag=city_dead] run scoreboard players operation @s deathTimerBuffer = DeathBuffer constant
# 10 - the number of seconds that have past, gives you number of seconds left
execute as @a[tag=city,tag=city_dead] run scoreboard players operation @s deathTimerBuffer -= @s deathTimerBufferBuffer
#actionbar for telling players when they will respawn
execute as @a[tag=city,tag=city_dead] run title @s actionbar ["",{"text":"Respawn in: ","color":"gold"},{"score":{"name":"@s","objective":"deathTimerBuffer"},"color":"red"},{"text":" seconds","color":"gold"}]

#resets players when they have been dead for 10 seconds
#sets them to adventure
execute as @a[tag=city,tag=city_dead] if score @s deathTimer matches 280.. run gamemode adventure @s
#tp them to their spanws
execute as @a[tag=city,tag=city_dead,team=uRed] if score @s deathTimer matches 280.. run tp @s 15 54 -1036
execute as @a[tag=city,tag=city_dead,team=uBlue] if score @s deathTimer matches 280.. run tp @s 77 55 -1118
#tells them they respawned 
execute as @a[tag=city,tag=city_dead] if score @s deathTimer matches 280.. run title @s actionbar {"text":"Respawned","color":"gold"}
#run the general respawn
execute as @a[tag=city,tag=city_dead] if score @s deathTimer matches 280.. run function under_pack:general_functions/general_respawn
#remove dead tag
execute as @a[tag=city,tag=city_dead] if score @s deathTimer matches 280.. run tag @s remove city_dead
#reset their deathtimer
execute as @a[tag=city] if score @s deathTimer matches 280.. run scoreboard players set @s deathTimer 0

#runs the score tracker if a team wins a round
execute if score red_city points matches 100 run function under_pack:city_functions/city_point/city_tally
execute if score blue_city points matches 100 run function under_pack:city_functions/city_point/city_tally

#resistance in spawns
execute as @a[team=uRed,x=10,y=54,z=-1038,dx=15,dz=6,dy=3,tag=city] run effect give @s resistance 1 6 false
execute as @a[team=uBlue,x=75,y=55,z=-1122,dx=8,dz=8,dy=4,tag=city] run effect give @s resistance 1 6 false
#healing in spawns
execute as @a[team=uRed,x=10,y=54,z=-1038,dx=15,dz=6,dy=3,tag=city] run effect give @s instant_health
execute as @a[team=uBlue,x=75,y=55,z=-1122,dx=8,dz=8,dy=4,tag=city] run effect give @s instant_health
#cant enter enemy spawns
execute as @a[team=uBlue,x=9,y=54,z=-1038,dx=4,dz=3,dy=2,tag=city] at @s run tp @s ~-1 ~ ~
execute as @a[team=uBlue,x=25,y=54,z=-1039,dx=-3,dz=10,dy=4,tag=city] at @s run tp @s ~ ~ ~-1
execute as @a[team=uRed,x=75,y=55,z=-1122,dx=8,dz=8,dy=4,tag=city] at @s run tp @s ~ ~ ~1

#runs class changing system
function under_pack:class_functions/ui/checks
