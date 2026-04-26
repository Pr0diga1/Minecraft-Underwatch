#12 SECOND DEATH TIMER!!!

#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=nylium] run function under_pack:general_functions/general_classloop

#is a player on point
execute as @a[tag=nylium] if entity @s[x=-559,y=61,z=87,dx=9,dy=3,dz=9,tag=nylium,gamemode=adventure] run scoreboard players set @s onPoint 1
execute as @a[tag=nylium] unless entity @s[x=-559,y=61,z=87,dx=9,dy=3,dz=9,tag=nylium,gamemode=adventure] run scoreboard players set @s onPoint 0

#sets a buffer to whoever has control of the point
scoreboard players operation nyliumBuffer team = nylium team
#updates the point for the tick
function under_pack:nylium_functions/nylium_point
#resets the clock if ownership of the point changed
execute unless score nyliumBuffer team = nylium team run scoreboard players set nylium timer 0

#every 1.2 seconds, run the percent add function
execute if score nylium timer matches 24 if score nylium team matches 0 if score red_nylium points matches ..98 run scoreboard players add red_nylium points 1
execute if score nylium timer matches 24 if score nylium team matches 1 if score blue_nylium points matches ..98 run scoreboard players add blue_nylium points 1

#activate ot when either team hits 99
execute if score red_nylium points matches 99 if score nylium team matches 0 run scoreboard players set nylium_overtime_toggle swag 1
execute if score blue_nylium points matches 99 if score nylium team matches 1 run scoreboard players set nylium_overtime_toggle swag 1

#getting the 100th point
execute if score red_nylium points matches 99 if score nylium_overtime timer matches 0 if score nylium team matches 0 run scoreboard players add red_nylium points 1
execute if score blue_nylium points matches 99 if score nylium_overtime timer matches 0 if score nylium team matches 1 run scoreboard players add blue_nylium points 1

#show the ot bossbar if ot is active
execute if score nylium_overtime_toggle swag matches 1 run bossbar set count:nylium_ot visible true
execute if score nylium_overtime_toggle swag matches 0 run bossbar set count:nylium_ot visible false

#updates bossbars
execute store result bossbar count:nylium_blue value run scoreboard players get blue_nylium points
execute store result bossbar count:nylium_red value run scoreboard players get red_nylium points
execute store result bossbar count:nylium_ot value run scoreboard players get nylium_overtime timer

#overtime naturally deteriorates
execute if score nylium_overtime_toggle swag matches 1 if score nylium_overtime timer matches 1.. run scoreboard players remove nylium_overtime timer 1

#overtime goes back to full when the team that does not have 99 has a player on the point
execute if score red_nylium points matches 99 if score nylium team matches 0 unless score on_point_nylium_blue player_num matches 0 run scoreboard players set nylium_overtime timer 60
execute if score blue_nylium points matches 99 if score nylium team matches 1 unless score on_point_nylium_red player_num matches 0 run scoreboard players set nylium_overtime timer 60

#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for red
execute if score red_nylium points matches 99 if score nylium team matches 1 unless score nyliumBuffer team = nylium team run scoreboard players set nylium_overtime_toggle swag 0
execute if score red_nylium points matches 99 if score nylium team matches 1 unless score nyliumBuffer team = nylium team run scoreboard players set nylium_overtime timer 60
#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for blue
execute if score blue_nylium points matches 99 if score nylium team matches 0 unless score nyliumBuffer team = nylium team run scoreboard players set nylium_overtime_toggle swag 0
execute if score blue_nylium points matches 99 if score nylium team matches 0 unless score nyliumBuffer team = nylium team run scoreboard players set nylium_overtime timer 60

#resets timer to start another cycle
execute if score nylium timer matches 24 run scoreboard players set nylium timer 0

#ot hitting 0 immediately causes a point refresh event
execute if score nylium_overtime timer matches 0 run scoreboard players set nylium timer 23

#iterates the timer up 1
scoreboard players add nylium timer 1

#increases the death timer for dead players
execute as @a[tag=nylium,tag=uDead] run scoreboard players add @s deathTimer 1

#creates a buffer that stores seconds instead of TickToSecond
#buffer = deathTimer
execute as @a[tag=nylium,tag=uDead] run scoreboard players operation @s deathTimerBuffer = @s deathTimer
#buffer converted from ticks to seconds
execute as @a[tag=nylium,tag=uDead] run scoreboard players operation @s deathTimerBuffer /= TickToSecond constant
#second buffer = first buffer
execute as @a[tag=nylium,tag=uDead] run scoreboard players operation @s deathTimerBufferBuffer = @s deathTimerBuffer 
#first buffer is now 10
execute as @a[tag=nylium,tag=uDead] run scoreboard players operation @s deathTimerBuffer = DeathBuffer constant
# 10 - the number of seconds that have past, gives you number of seconds left
execute as @a[tag=nylium,tag=uDead] run scoreboard players operation @s deathTimerBuffer -= @s deathTimerBufferBuffer
#actionbar for telling players when they will respawn
execute as @a[tag=nylium,tag=uDead] run title @s actionbar ["",{"text":"Respawn in: ","color":"gold"},{"score":{"name":"@s","objective":"deathTimerBuffer"},"color":"red"},{"text":" seconds","color":"gold"}]

#resets players when they have been dead for 10 seconds
#sets them to adventure
execute as @a[tag=nylium,tag=uDead] if score @s deathTimer matches 300.. run gamemode adventure @s
#tp them to their spanws
execute as @a[tag=nylium,tag=uDead,team=uRed] if score @s deathTimer matches 300.. run tp @s -492 67 90
execute as @a[tag=nylium,tag=uDead,team=uBlue] if score @s deathTimer matches 300.. run tp @s -617 67 91
#tells them they respawned 
execute as @a[tag=nylium,tag=uDead] if score @s deathTimer matches 300.. run title @s actionbar {"text":"Respawned","color":"gold"}
#run the general respawn
execute as @a[tag=nylium,tag=uDead] if score @s deathTimer matches 300.. run function under_pack:general_functions/general_respawn
#remove dead tag
execute as @a[tag=nylium,tag=uDead] if score @s deathTimer matches 300.. run tag @s remove uDead
#reset their deathtimer
execute as @a[tag=nylium] if score @s deathTimer matches 300.. run scoreboard players set @s deathTimer 0

#runs the score tracker if a team wins a round
execute if score red_nylium points matches 100 run function under_pack:nylium_functions/nylium_tally
execute if score blue_nylium points matches 100 run function under_pack:nylium_functions/nylium_tally

#resistance in spawns
execute as @a[team=uRed,x=-495,y=67,z=89,dx=4,dy=3,dz=3,tag=nylium] run effect give @s resistance 1 6 false
execute as @a[team=uBlue,x=-618,y=67,z=89,dx=4,dy=3,dz=3,tag=nylium] run effect give @s resistance 1 6 false
#healing in spawns
execute as @a[team=uRed,x=-495,y=67,z=89,dx=4,dy=3,dz=3,tag=nylium] run effect give @s instant_health
execute as @a[team=uBlue,x=-618,y=67,z=89,dx=4,dy=3,dz=3,tag=nylium] run effect give @s instant_health
#cant enter enemy spawns
execute as @a[team=uBlue,x=-495,y=67,z=89,dx=4,dy=3,dz=3,tag=nylium] at @s run tp @s ~-1 ~ ~
execute as @a[team=uRed,x=-618,y=67,z=89,dx=4,dy=3,dz=3,tag=nylium] at @s run tp @s ~1 ~ ~

#red x=-495,y=67,z=89,dx=4,dy=3,dz=3,
#blue x=-618,y=67,z=89,dx=4,dy=3,dz=3,

#runs class changing system
function under_pack:class_functions/ui/checks
