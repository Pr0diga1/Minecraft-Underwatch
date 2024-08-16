#12 SECOND DEATH TIMER!!!

#each player runs their class's tick function as long as they are not respawning or in their spawnpoint
execute as @a[tag=lake] unless entity @s[tag=lake_dead] run function under_pack:general_functions/general_classloop

#is a player on point
execute as @a[tag=lake] if entity @s[x=571,y=43,z=-13,dx=9,dy=2,dz=9,tag=lake,gamemode=adventure] run scoreboard players set @s onPoint 1
execute as @a[tag=lake] unless entity @s[x=571,y=43,z=-13,dx=9,dy=2,dz=9,tag=lake,gamemode=adventure] run scoreboard players set @s onPoint 0

#sets a buffer to whoever has control of the point
scoreboard players operation lakeBuffer team = lake team
#updates the point for the tick
function under_pack:lake_functions/lake_point
#resets the clock if ownership of the point changed
execute unless score lakeBuffer team = lake team run scoreboard players set lake timer 0

#every 1.2 seconds, run the percent add function
execute if score lake timer matches 24 if score lake team matches 0 if score red_lake points matches ..98 run scoreboard players add red_lake points 1
execute if score lake timer matches 24 if score lake team matches 1 if score blue_lake points matches ..98 run scoreboard players add blue_lake points 1

#activate ot when either team hits 99
execute if score red_lake points matches 99 if score lake team matches 0 run scoreboard players set lake_overtime_toggle swag 1
execute if score blue_lake points matches 99 if score lake team matches 1 run scoreboard players set lake_overtime_toggle swag 1

#getting the 100th point
execute if score red_lake points matches 99 if score lake_overtime timer matches 0 if score lake team matches 0 run scoreboard players add red_lake points 1
execute if score blue_lake points matches 99 if score lake_overtime timer matches 0 if score lake team matches 1 run scoreboard players add blue_lake points 1

#show the ot bossbar if ot is active
execute if score lake_overtime_toggle swag matches 1 run bossbar set count:lake_ot visible true
execute if score lake_overtime_toggle swag matches 0 run bossbar set count:lake_ot visible false

#updates bossbars
execute store result bossbar count:lake_blue value run scoreboard players get blue_lake points
execute store result bossbar count:lake_red value run scoreboard players get red_lake points
execute store result bossbar count:lake_ot value run scoreboard players get lake_overtime timer

#overtime naturally deteriorates
execute if score lake_overtime_toggle swag matches 1 if score lake_overtime timer matches 1.. run scoreboard players remove lake_overtime timer 1

#overtime goes back to full when the team that does not have 99 has a player on the point
execute if score red_lake points matches 99 if score lake team matches 0 unless score on_point_lake_blue player_num matches 0 run scoreboard players set lake_overtime timer 60
execute if score blue_lake points matches 99 if score lake team matches 1 unless score on_point_lake_red player_num matches 0 run scoreboard players set lake_overtime timer 60

#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for red
execute if score red_lake points matches 99 if score lake team matches 1 unless score lakeBuffer team = lake team run scoreboard players set lake_overtime_toggle swag 0
execute if score red_lake points matches 99 if score lake team matches 1 unless score lakeBuffer team = lake team run scoreboard players set lake_overtime timer 60
#overtime ends and gets set back to 60 when one team has 99 and other has control of the point, whenever the point changes hands for blue
execute if score blue_lake points matches 99 if score lake team matches 0 unless score lakeBuffer team = lake team run scoreboard players set lake_overtime_toggle swag 0
execute if score blue_lake points matches 99 if score lake team matches 0 unless score lakeBuffer team = lake team run scoreboard players set lake_overtime timer 60

#resets timer to start another cycle
execute if score lake timer matches 24 run scoreboard players set lake timer 0

#ot hitting 0 immediately causes a point refresh event
execute if score lake_overtime timer matches 0 run scoreboard players set lake timer 23

#iterates the timer up 1
scoreboard players add lake timer 1

#increases the death timer for dead players
execute as @a[tag=lake,tag=lake_dead] run scoreboard players add @s deathTimer 1

#creates a buffer that stores seconds instead of TickToSecond
#buffer = deathTimer
execute as @a[tag=lake,tag=lake_dead] run scoreboard players operation @s deathTimerBuffer = @s deathTimer
#buffer converted from ticks to seconds
execute as @a[tag=lake,tag=lake_dead] run scoreboard players operation @s deathTimerBuffer /= TickToSecond constant
#second buffer = first buffer
execute as @a[tag=lake,tag=lake_dead] run scoreboard players operation @s deathTimerBufferBuffer = @s deathTimerBuffer 
#first buffer is now 10
execute as @a[tag=lake,tag=lake_dead] run scoreboard players operation @s deathTimerBuffer = DeathBuffer constant
# 10 - the number of seconds that have past, gives you number of seconds left
execute as @a[tag=lake,tag=lake_dead] run scoreboard players operation @s deathTimerBuffer -= @s deathTimerBufferBuffer
#actionbar for telling players when they will respawn
execute as @a[tag=lake,tag=lake_dead] run title @s actionbar ["",{"text":"Respawn in: ","color":"gold"},{"score":{"name":"@s","objective":"deathTimerBuffer"},"color":"red"},{"text":" seconds","color":"gold"}]

#resets players when they have been dead for 10 seconds
#sets them to adventure
execute as @a[tag=lake,tag=lake_dead] if score @s deathTimer matches 300.. run gamemode adventure @s
#tp them to their spanws
execute as @a[tag=lake,tag=lake_dead,team=uRed] if score @s deathTimer matches 300.. run tp @s -497 86 -575
execute as @a[tag=lake,tag=lake_dead,team=uBlue] if score @s deathTimer matches 300.. run tp @s -508 86 -457
#tells them they respawned 
execute as @a[tag=lake,tag=lake_dead] if score @s deathTimer matches 300.. run title @s actionbar {"text":"Respawned","color":"gold"}
#run the general respawn
execute as @a[tag=lake,tag=lake_dead] if score @s deathTimer matches 300.. run function under_pack:general_functions/general_respawn
#remove dead tag
execute as @a[tag=lake,tag=lake_dead] if score @s deathTimer matches 300.. run tag @s remove lake_dead
#reset their deathtimer
execute as @a[tag=lake] if score @s deathTimer matches 300.. run scoreboard players set @s deathTimer 0

#runs the score tracker if a team wins a round
execute if score red_lake points matches 100 run function under_pack:lake_functions/lake_tally
execute if score blue_lake points matches 100 run function under_pack:lake_functions/lake_tally

#resistance in spawns
execute as @a[team=uRed,x=-498,y=86,z=-576,dx=3,dz=18,dy=2,tag=lake] run effect give @s resistance 1 6 false
execute as @a[team=uBlue,x=-511,y=86,z=-472,dx=5,dz=16,dy=2,tag=lake] run effect give @s resistance 1 6 false
#healing in spawns
execute as @a[team=uRed,x=-498,y=86,z=-576,dx=3,dz=18,dy=2,tag=lake] run effect give @s instant_health
execute as @a[team=uBlue,x=-511,y=86,z=-472,dx=5,dz=16,dy=2,tag=lake] run effect give @s instant_health
#cant enter enemy spawns
execute as @a[team=uBlue,x=-498,y=86,z=-576,dx=3,dz=18,dy=2,tag=lake] at @s run tp @s ~ ~ ~1
execute as @a[team=uRed,x=-511,y=86,z=-472,dx=5,dz=16,dy=2,tag=lake] at @s run tp @s ~ ~ ~-1

#runs class changing system
function under_pack:class_functions/ui/checks
