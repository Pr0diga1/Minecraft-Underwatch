#if a game is active, run its tick function every tick
execute if score gazebo swag matches 1 run function under_pack:gazebo_functions/gazebo_tick
execute if score park swag matches 1 run function under_pack:park_functions/park_tick
execute if score ruin swag matches 1 run function under_pack:ruin_functions/ruin_tick
execute if score res swag matches 1 run function under_pack:res_functions/res_tick
execute if score cityDM swag matches 1 run function under_pack:city_functions/city_dm/city_tick
execute if score cityPOINT swag matches 1 run function under_pack:city_functions/city_point/city_tick


#number of players in a map stored for matchmaking
execute store result score gazebo player_num if entity @a[tag=gazebo]
execute store result score park player_num if entity @a[tag=park]
execute store result score ruin player_num if entity @a[tag=ruin]
execute store result score res player_num if entity @a[tag=res]
execute store result score city player_num if entity @a[tag=city]

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


