#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=cavern] run function under_pack:general_functions/general_classloop

#is a player on point
execute as @a[tag=cavern] if entity @s[x=-10,y=77,z=-733,dx=7,dy=2,dz=8,tag=cavern,gamemode=adventure] run scoreboard players set @s onPoint 1
execute as @a[tag=cavern] unless entity @s[x=-10,y=77,z=-733,dx=7,dy=2,dz=8,tag=cavern,gamemode=adventure] run scoreboard players set @s onPoint 0

#sets a buffer to whoever has control of the point
scoreboard players operation cavernBuffer team = cavern team
#updates the point for the tick
function under_pack:cavern_functions/cavern_point
#resets the clock if ownership of the point changed
execute unless score cavernBuffer team = cavern team run scoreboard players set cavern timer 0

#every 1.2 seconds, run the percent add function
execute if score cavern timer matches 24 if score cavern team matches 0 if score red_cavern points matches ..98 run scoreboard players add red_cavern points 1
execute if score cavern timer matches 24 if score cavern team matches 1 if score blue_cavern points matches ..98 run scoreboard players add blue_cavern points 1

#activate ot when either team hits 99
execute if score red_cavern points matches 99 if score cavern team matches 0 run scoreboard players set cavern_overtime_toggle swag 1
execute if score blue_cavern points matches 99 if score cavern team matches 1 run scoreboard players set cavern_overtime_toggle swag 1

#getting the 100th point
execute if score red_cavern points matches 99 if score cavern_overtime timer matches 0 if score cavern team matches 0 run scoreboard players add red_cavern points 1
execute if score blue_cavern points matches 99 if score cavern_overtime timer matches 0 if score cavern team matches 1 run scoreboard players add blue_cavern points 1

#show the ot bossbar if ot is active
execute if score cavern_overtime_toggle swag matches 1 run bossbar set count:cavern_ot visible true
execute if score cavern_overtime_toggle swag matches 0 run bossbar set count:cavern_ot visible false

#updates bossbars
execute store result bossbar count:cavern_blue value run scoreboard players get blue_cavern points
execute store result bossbar count:cavern_red value run scoreboard players get red_cavern points
execute store result bossbar count:cavern_ot value run scoreboard players get cavern_overtime timer

#overtime naturally deteriorates
execute if score cavern_overtime_toggle swag matches 1 if score cavern_overtime timer matches 1.. run scoreboard players remove cavern_overtime timer 1

#overtime goes back to full when the team that does not have 99 has a player on the point
execute if score red_cavern points matches 99 if score cavern team matches 0 unless score on_point_cavern_blue player_num matches 0 run scoreboard players set cavern_overtime timer 60
execute if score blue_cavern points matches 99 if score cavern team matches 1 unless score on_point_cavern_red player_num matches 0 run scoreboard players set cavern_overtime timer 60

#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for red
execute if score red_cavern points matches 99 if score cavern team matches 1 unless score cavernBuffer team = cavern team run scoreboard players set cavern_overtime_toggle swag 0
execute if score red_cavern points matches 99 if score cavern team matches 1 unless score cavernBuffer team = cavern team run scoreboard players set cavern_overtime timer 60
#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for blue
execute if score blue_cavern points matches 99 if score cavern team matches 0 unless score cavernBuffer team = cavern team run scoreboard players set cavern_overtime_toggle swag 0
execute if score blue_cavern points matches 99 if score cavern team matches 0 unless score cavernBuffer team = cavern team run scoreboard players set cavern_overtime timer 60

#resets timer to start another cycle
execute if score cavern timer matches 24 run scoreboard players set cavern timer 0

#ot hitting 0 immediately causes a point refresh event
execute if score cavern_overtime timer matches 0 run scoreboard players set cavern timer 23

#iterates the timer up 1
scoreboard players add cavern timer 1

#increases the death timer for dead players
execute as @a[tag=cavern,tag=uDead] run scoreboard players add @s deathTimer 1

#creates a buffer that stores seconds instead of TickToSecond
#buffer = deathTimer
execute as @a[tag=cavern,tag=uDead] run scoreboard players operation @s deathTimerBuffer = @s deathTimer
#buffer converted from ticks to seconds
execute as @a[tag=cavern,tag=uDead] run scoreboard players operation @s deathTimerBuffer /= TickToSecond constant
#second buffer = first buffer
execute as @a[tag=cavern,tag=uDead] run scoreboard players operation @s deathTimerBufferBuffer = @s deathTimerBuffer 
#first buffer is now 10
execute as @a[tag=cavern,tag=uDead] run scoreboard players operation @s deathTimerBuffer = DeathBuffer constant
# 10 - the number of seconds that have past, gives you number of seconds left
execute as @a[tag=cavern,tag=uDead] run scoreboard players operation @s deathTimerBuffer -= @s deathTimerBufferBuffer
#actionbar for telling players when they will respawn
execute as @a[tag=cavern,tag=uDead] run title @s actionbar ["",{"text":"Respawn in: ","color":"gold"},{"score":{"name":"@s","objective":"deathTimerBuffer"},"color":"red"},{"text":" seconds","color":"gold"}]

#resets players when they have been dead for 10 seconds
#sets them to adventure
execute as @a[tag=cavern,tag=uDead] if score @s deathTimer matches 240.. run gamemode adventure @s
#tp them to their spanws
execute as @a[tag=cavern,tag=uDead,team=uRed] if score @s deathTimer matches 240.. run tp @s 58 72 -731
execute as @a[tag=cavern,tag=uDead,team=uBlue] if score @s deathTimer matches 240.. run tp @s -67 72 -735
#tells them they respawned 
execute as @a[tag=cavern,tag=uDead] if score @s deathTimer matches 240.. run title @s actionbar {"text":"Respawned","color":"gold"}
#run the general respawn
execute as @a[tag=cavern,tag=uDead] if score @s deathTimer matches 240.. run function under_pack:general_functions/general_respawn
#remove dead tag
execute as @a[tag=cavern,tag=uDead] if score @s deathTimer matches 240.. run tag @s remove uDead
#reset their deathtimer
execute as @a[tag=cavern] if score @s deathTimer matches 240.. run scoreboard players set @s deathTimer 0

#runs the score tracker if a team wins a round
execute if score red_cavern points matches 100 run function under_pack:cavern_functions/cavern_tally
execute if score blue_cavern points matches 100 run function under_pack:cavern_functions/cavern_tally

#resistance in spawns
execute as @a[team=uRed,x=57,y=72,z=-732,dx=1,dz=2,dy=5,tag=cavern] run effect give @s resistance 1 6 false
execute as @a[team=uBlue,x=-67,y=72,z=-736,dx=1,dz=2,dy=5,tag=cavern] run effect give @s resistance 1 6 false
#healing in spawns
execute as @a[team=uRed,x=57,y=72,z=-732,dx=1,dz=2,dy=5,tag=cavern] run effect give @s instant_health
execute as @a[team=uBlue,x=-67,y=72,z=-736,dx=1,dz=2,dy=5,tag=cavern] run effect give @s instant_health

#runs class changing system
function under_pack:class_functions/ui/checks
