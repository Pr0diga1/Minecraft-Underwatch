# Start animation swing
execute as @n[tag=aj.animations.root] run function animated_java:animations/animations/swing_darksoul2/play

# Start swing timer
scoreboard players set @s ability1 20

# start swing tick advancement
advancement revoke @s only under_pack:dark_soul/swing_cooldown