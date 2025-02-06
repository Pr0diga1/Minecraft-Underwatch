# Kill rig and reset tags and scoreboards
execute if entity @s[team=uBlue] as @n[tag=aj.animations.root] run function animated_java:animations/remove/this
execute if entity @s[team=uRed] as @n[tag=aj.animations.root] run function animated_java:animations/remove/this
tag @s remove swing_started
tag @s[tag=swinging] remove swinging
scoreboard players reset @s ability1