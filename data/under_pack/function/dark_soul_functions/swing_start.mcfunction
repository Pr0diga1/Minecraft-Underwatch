# Summon animated java rig
function animated_java:animations/summon {args:{}}
execute if entity @s[team=uBlue] run tag @e[tag=aj.animations.root,tag=!uRed] add uBlue
execute if entity @s[team=uRed] run tag @e[tag=aj.animations.root,tag=!uBlue] add uRed

# Start the animation
function under_pack:dark_soul_functions/swing_1
tag @s add swing_started