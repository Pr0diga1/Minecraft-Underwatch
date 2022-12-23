#remove barriers
execute if score gazebo_grace timer matches 0 run fill -1590 57 -577 -1590 61 -570 air
execute if score gazebo_grace timer matches 0 run fill -1673 57 -570 -1673 61 -577 air

#handle bossbar visibility
execute if score gazebo_grace timer matches 0 run bossbar set count:gazebo visible true
execute if score gazebo_grace timer matches 0 run bossbar set count:gazebo_blue visible true
execute if score gazebo_grace timer matches 0 run bossbar set count:gazebo_red visible true
execute if score gazebo_grace timer matches 0 run bossbar set count:gazebo_grace visible false

#make title
execute if score gazebo_grace timer matches 0 run title @a[tag=gazebo] title {"text":"GOGOGOGOGOG","color":"yellow"}

#update bossbar
execute store result bossbar count:gazebo_grace value run scoreboard players get gazebo_grace timer

#handle iteration
execute if score gazebo_grace timer matches 1.. run schedule function under_pack:gazebo_functions/gazebo_grace 1t
scoreboard players remove gazebo_grace timer 1