# Kill rig and reset tags and scoreboards
execute as @n[tag=aj.animations.root] run function animated_java:animations/remove/this

tag @s remove swing_started
tag @s[tag=swinging] remove swinging
scoreboard players reset @s ability1