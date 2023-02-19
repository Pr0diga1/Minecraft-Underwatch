#if a gazebo game is active, run its tick function every tick
execute if score gazebo swag matches 1 run function under_pack:gazebo_functions/gazebo_tick
#if a gazebo game is active, run its tick function every tick
execute if score park swag matches 1 run function under_pack:park_functions/park_tick

#if someone has a death, run the death function
execute as @a if score @s uDeaths matches 1.. run function under_pack:general_functions/general_death

#silly blocks
execute as @e[type=falling_block] run data merge entity @s {Motion:[0.0,0.0,0.0]}

#kill the arrows
kill @e[type=arrow,scores={arrowTimer=1..}]
execute as @e[type=arrow,nbt={inGround:1b}] run scoreboard players add @s arrowTimer 1
#stop the xp sound
stopsound @a player entity.player.levelup
#saturation
effect give @a saturation 1 255 true
#healing
effect give @a[scores={class=0}] regeneration 1 15 true

#teams
execute as @a[tag=t1,tag=!ungame] run team join redTemp
execute as @a[tag=t2,tag=!ungame] run team join blueTemp
effect give @a[team=redTemp] glowing 1
effect give @a[team=blueTemp] glowing 1
