#revoke advancement
advancement revoke @s only under_pack:occultist/wounds2
#if someone is selected, particles
execute as @s[team=uBlue] at @a[team=uBlue,tag=sharing] run return run particle minecraft:dust{color:[0,0,0],scale:1} ~ ~.7 ~ .3 .6 .3 .001 15 force @s
execute as @s[team=uRed] at @a[team=uRed,tag=sharing] run return run particle minecraft:dust{color:[0,0,0],scale:1} ~ ~.7 ~ .3 .6 .3 .001 15 force @s

#if no one is selected, run a raycast
scoreboard players reset distance buffer
execute as @s[team=uBlue] unless entity @a[team=uBlue,tag=sharing] anchored eyes positioned ^ ^ ^ run function under_pack:occultist/share_wounds_raycast
execute as @s[team=uRed] unless entity @a[team=uRed,tag=sharing] anchored eyes positioned ^ ^ ^ run function under_pack:occultist/share_wounds_raycast
