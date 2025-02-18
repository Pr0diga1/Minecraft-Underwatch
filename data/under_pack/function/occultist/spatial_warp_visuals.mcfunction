execute if entity @s[team=uBlue] unless entity @e[type=marker,tag=warp_teleporter,tag=uBlue] run summon marker ~ ~ ~ {Tags:["warp_teleporter","uBlue"]}
execute if entity @s[team=uRed] unless entity @e[type=marker,tag=warp_teleporter,tag=uRed] run summon marker ~ ~ ~ {Tags:["warp_teleporter","uRed"]}

scoreboard players reset distance buffer
execute anchored eyes positioned ^ ^ ^ run function under_pack:occultist/spatial_warp_raycast
execute if entity @s[team=uBlue] at @e[type=marker,tag=warp_teleporter,tag=uBlue] run particle minecraft:squid_ink ~ ~ ~ 0.4 1 0.4 0.05 10 force @s
execute if entity @s[team=uRed] at @e[type=marker,tag=warp_teleporter,tag=uRed] run particle minecraft:squid_ink ~ ~ ~ 0.4 1 0.4 0.05 10 force @s

advancement revoke @s only under_pack:occultist/warp_visuals