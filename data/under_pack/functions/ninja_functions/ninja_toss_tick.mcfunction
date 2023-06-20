#setting the arrow velo for red team
execute as @s[tag=ninjaArrow1,tag=red] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s ninjaMotionX
execute as @s[tag=ninjaArrow1,tag=red] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s ninjaMotionY
execute as @s[tag=ninjaArrow1,tag=red] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s ninjaMotionZ

execute as @s[tag=ninjaArrow2,tag=red] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s ninjaMotionX
execute as @s[tag=ninjaArrow2,tag=red] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s ninjaMotionY
execute as @s[tag=ninjaArrow2,tag=red] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s ninjaMotionZ

execute as @s[tag=ninjaArrow3,tag=red] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s ninjaMotionX
execute as @s[tag=ninjaArrow3,tag=red] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s ninjaMotionY
execute as @s[tag=ninjaArrow3,tag=red] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s ninjaMotionZ

#setting the arrow velo for blue team
execute as @s[tag=ninjaArrow1,tag=blue] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s ninjaMotionX
execute as @s[tag=ninjaArrow1,tag=blue] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s ninjaMotionY
execute as @s[tag=ninjaArrow1,tag=blue] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s ninjaMotionZ

execute as @s[tag=ninjaArrow2,tag=blue] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s ninjaMotionX
execute as @s[tag=ninjaArrow2,tag=blue] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s ninjaMotionY
execute as @s[tag=ninjaArrow2,tag=blue] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s ninjaMotionZ

execute as @s[tag=ninjaArrow3,tag=blue] store result entity @s Motion[0] double 0.0015 run scoreboard players get @s ninjaMotionX
execute as @s[tag=ninjaArrow3,tag=blue] store result entity @s Motion[1] double 0.0015 run scoreboard players get @s ninjaMotionY
execute as @s[tag=ninjaArrow3,tag=blue] store result entity @s Motion[2] double 0.0015 run scoreboard players get @s ninjaMotionZ

#particles
execute at @s[type=arrow,tag=ninjaArrow1] run particle witch ~ ~ ~ 0 0 0 0 1
execute at @s[type=arrow,tag=ninjaArrow2] run particle witch ~ ~ ~ 0 0 0 0 1
execute at @s[type=arrow,tag=ninjaArrow3] run particle witch ~ ~ ~ 0 0 0 0 1