#the marker has existed for another tick
scoreboard players add distance buffer 1

#kill the marker if its in a block
execute if entity @s[team=uBlue] unless block ~ ~ ~ #under_pack:non_solid run return run tp @n[type=marker,tag=warp_teleporter,tag=uBlue] ~ ~ ~
execute if entity @s[team=uRed] unless block ~ ~ ~ #under_pack:non_solid run return run tp @n[type=marker,tag=warp_teleporter,tag=uRed] ~ ~ ~

#particle campfire_signal_smoke ~ ~ ~ 0 0 0 0 1

#rerun command
execute if score distance buffer matches ..60 positioned ^ ^ ^.5 run return run function under_pack:occultist/spatial_warp_raycast
execute if entity @s[team=uBlue] run tp @n[type=marker,tag=warp_teleporter,tag=uBlue] ~ ~ ~
execute if entity @s[team=uRed] run tp @n[type=marker,tag=warp_teleporter,tag=uRed] ~ ~ ~
