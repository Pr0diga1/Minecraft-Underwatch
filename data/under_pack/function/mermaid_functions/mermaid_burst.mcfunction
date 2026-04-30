scoreboard players set @s mermaidburst 0
execute if entity @s[team=uRed] at @s as @a[distance=..2.7,team=uBlue] run function under_pack:mermaid_functions/mermaid_burst_damage
execute if entity @s[team=uBlue] at @s as @a[distance=..2.7,team=uRed] run function under_pack:mermaid_functions/mermaid_burst_damage
execute at @s run playsound minecraft:entity.player.splash.high_speed master @a[distance=..2] ~ ~ ~ 5 2

#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.001 ~0.5 ~2.500 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.725 ~0.5 ~2.393 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.387 ~0.5 ~2.080 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.931 ~0.5 ~1.588 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.308 ~0.5 ~0.960 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.487 ~0.5 ~0.250 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.453 ~0.5 ~-0.482 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.208 ~0.5 ~-1.172 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.774 ~0.5 ~-1.762 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.187 ~0.5 ~-2.200 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.498 ~0.5 ~-2.450 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.234 ~0.5 ~-2.489 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.945 ~0.5 ~-2.314 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.576 ~0.5 ~-1.941 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.071 ~0.5 ~-1.401 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.388 ~0.5 ~-0.740 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.500 ~0.5 ~-0.016 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.397 ~0.5 ~0.709 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.089 ~0.5 ~1.374 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.601 ~0.5 ~1.920 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.975 ~0.5 ~2.302 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.266 ~0.5 ~2.486 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.466 ~0.5 ~2.456 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.158 ~0.5 ~2.216 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.750 ~0.5 ~1.785 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.193 ~0.5 ~1.201 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.447 ~0.5 ~0.514 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.491 ~0.5 ~-0.218 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.320 ~0.5 ~-0.930 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.951 ~0.5 ~-1.563 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.414 ~0.5 ~-2.062 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.756 ~0.5 ~-2.383 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.033 ~0.5 ~-2.500 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.694 ~0.5 ~-2.402 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.360 ~0.5 ~-2.098 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.910 ~0.5 ~-1.613 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.295 ~0.5 ~-0.990 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.484 ~0.5 ~-0.282 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.459 ~0.5 ~0.450 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.223 ~0.5 ~1.143 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.796 ~0.5 ~1.739 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.215 ~0.5 ~2.185 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.530 ~0.5 ~2.443 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.202 ~0.5 ~2.492 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.915 ~0.5 ~2.326 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.550 ~0.5 ~1.961 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.052 ~0.5 ~1.428 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.378 ~0.5 ~0.771 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.500 ~0.5 ~0.049 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.406 ~0.5 ~-0.678 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~2.106 ~0.5 ~-1.346 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.626 ~0.5 ~-1.899 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.005 ~0.5 ~-2.289 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.299 ~0.5 ~-2.482 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.434 ~0.5 ~-2.462 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.129 ~0.5 ~-2.231 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.727 ~0.5 ~-1.808 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.177 ~0.5 ~-1.229 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.440 ~0.5 ~-0.545 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.493 ~0.5 ~0.185 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-2.332 ~0.5 ~0.900 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.971 ~0.5 ~1.538 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-1.441 ~0.5 ~2.043 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.787 ~0.5 ~2.373 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~-0.065 ~0.5 ~2.499 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~0.662 ~0.5 ~2.411 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.333 ~0.5 ~2.115 0 0 0 0 1 force @a
#execute at @s run particle minecraft:dust{color:[0.0,0.35,1.0],scale:1} ~1.889 ~0.5 ~1.638 0 0 0 0 1 force @a

particle enchanted_hit ~ ~0.7 ~ 0.001 -0.480 2.500 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.725 -0.480 2.393 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.387 -0.480 2.080 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.931 -0.480 1.588 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.308 -0.480 0.960 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.487 -0.480 0.250 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.453 -0.480 -0.482 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.208 -0.480 -1.172 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.774 -0.480 -1.762 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.187 -0.480 -2.200 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.498 -0.480 -2.450 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.234 -0.480 -2.489 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.945 -0.480 -2.314 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.576 -0.480 -1.941 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.071 -0.480 -1.401 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.388 -0.480 -0.740 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.500 -0.480 -0.016 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.397 -0.480 0.709 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.089 -0.480 1.374 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.601 -0.480 1.920 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.975 -0.480 2.302 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.266 -0.480 2.486 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.466 -0.480 2.456 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.158 -0.480 2.216 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.750 -0.480 1.785 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.193 -0.480 1.201 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.447 -0.480 0.514 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.491 -0.480 -0.218 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.320 -0.480 -0.930 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.951 -0.480 -1.563 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.414 -0.480 -2.062 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.756 -0.480 -2.383 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.033 -0.480 -2.500 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.694 -0.480 -2.402 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.360 -0.480 -2.098 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.910 -0.480 -1.613 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.295 -0.480 -0.990 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.484 -0.480 -0.282 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.459 -0.480 0.450 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.223 -0.480 1.143 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.796 -0.480 1.739 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.215 -0.480 2.185 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.530 -0.480 2.443 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.202 -0.480 2.492 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.915 -0.480 2.326 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.550 -0.480 1.961 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.052 -0.480 1.428 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.378 -0.480 0.771 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.500 -0.480 0.049 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.406 -0.480 -0.678 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.106 -0.480 -1.346 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.626 -0.480 -1.899 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.005 -0.480 -2.289 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.299 -0.480 -2.482 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.434 -0.480 -2.462 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.129 -0.480 -2.231 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.727 -0.480 -1.808 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.177 -0.480 -1.229 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.440 -0.480 -0.545 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.493 -0.480 0.185 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.332 -0.480 0.900 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.971 -0.480 1.538 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.441 -0.480 2.043 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.787 -0.480 2.373 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.065 -0.480 2.499 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.662 -0.480 2.411 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.333 -0.480 2.115 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.889 -0.480 1.638 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.001 -0.480 2.500 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.725 -0.480 2.393 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.387 -0.480 2.080 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.931 -0.480 1.588 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.308 -0.480 0.960 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.487 -0.480 0.250 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.453 -0.480 -0.482 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.208 -0.480 -1.172 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.774 -0.480 -1.762 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.187 -0.480 -2.200 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.498 -0.480 -2.450 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.234 -0.480 -2.489 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.945 -0.480 -2.314 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.576 -0.480 -1.941 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.071 -0.480 -1.401 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.388 -0.480 -0.740 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.500 -0.480 -0.016 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.397 -0.480 0.709 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.089 -0.480 1.374 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.601 -0.480 1.920 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.975 -0.480 2.302 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.266 -0.480 2.486 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.466 -0.480 2.456 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.158 -0.480 2.216 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.750 -0.480 1.785 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.193 -0.480 1.201 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.447 -0.480 0.514 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.491 -0.480 -0.218 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.320 -0.480 -0.930 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.951 -0.480 -1.563 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.414 -0.480 -2.062 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.756 -0.480 -2.383 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.033 -0.480 -2.500 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.694 -0.480 -2.402 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.360 -0.480 -2.098 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.910 -0.480 -1.613 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.295 -0.480 -0.990 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.484 -0.480 -0.282 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.459 -0.480 0.450 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.223 -0.480 1.143 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.796 -0.480 1.739 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.215 -0.480 2.185 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.530 -0.480 2.443 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.202 -0.480 2.492 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.915 -0.480 2.326 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.550 -0.480 1.961 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.052 -0.480 1.428 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.378 -0.480 0.771 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.500 -0.480 0.049 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.406 -0.480 -0.678 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.106 -0.480 -1.346 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.626 -0.480 -1.899 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.005 -0.480 -2.289 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.299 -0.480 -2.482 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.434 -0.480 -2.462 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.129 -0.480 -2.231 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.727 -0.480 -1.808 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.177 -0.480 -1.229 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.440 -0.480 -0.545 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.493 -0.480 0.185 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.332 -0.480 0.900 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.971 -0.480 1.538 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.441 -0.480 2.043 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.787 -0.480 2.373 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.065 -0.480 2.499 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.662 -0.480 2.411 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.333 -0.480 2.115 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.889 -0.480 1.638 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.001 -0.480 2.500 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.725 -0.480 2.393 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.387 -0.480 2.080 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.931 -0.480 1.588 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.308 -0.480 0.960 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.487 -0.480 0.250 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.453 -0.480 -0.482 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.208 -0.480 -1.172 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.774 -0.480 -1.762 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.187 -0.480 -2.200 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.498 -0.480 -2.450 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.234 -0.480 -2.489 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.945 -0.480 -2.314 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.576 -0.480 -1.941 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.071 -0.480 -1.401 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.388 -0.480 -0.740 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.500 -0.480 -0.016 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.397 -0.480 0.709 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.089 -0.480 1.374 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.601 -0.480 1.920 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.975 -0.480 2.302 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.266 -0.480 2.486 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.466 -0.480 2.456 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.158 -0.480 2.216 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.750 -0.480 1.785 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.193 -0.480 1.201 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.447 -0.480 0.514 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.491 -0.480 -0.218 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.320 -0.480 -0.930 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.951 -0.480 -1.563 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.414 -0.480 -2.062 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.756 -0.480 -2.383 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.033 -0.480 -2.500 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.694 -0.480 -2.402 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.360 -0.480 -2.098 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.910 -0.480 -1.613 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.295 -0.480 -0.990 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.484 -0.480 -0.282 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.459 -0.480 0.450 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.223 -0.480 1.143 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.796 -0.480 1.739 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.215 -0.480 2.185 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.530 -0.480 2.443 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.202 -0.480 2.492 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.915 -0.480 2.326 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.550 -0.480 1.961 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.052 -0.480 1.428 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.378 -0.480 0.771 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.500 -0.480 0.049 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.406 -0.480 -0.678 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 2.106 -0.480 -1.346 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.626 -0.480 -1.899 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.005 -0.480 -2.289 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.299 -0.480 -2.482 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.434 -0.480 -2.462 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.129 -0.480 -2.231 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.727 -0.480 -1.808 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.177 -0.480 -1.229 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.440 -0.480 -0.545 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.493 -0.480 0.185 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -2.332 -0.480 0.900 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.971 -0.480 1.538 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -1.441 -0.480 2.043 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.787 -0.480 2.373 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ -0.065 -0.480 2.499 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 0.662 -0.480 2.411 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.333 -0.480 2.115 0.987 0 force @a
particle enchanted_hit ~ ~0.7 ~ 1.889 -0.480 1.638 0.987 0 force @a

particle bubble_pop ~ ~0.7 ~ 0.001 -0.51 2.500 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.725 -0.51 2.393 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.387 -0.51 2.080 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.931 -0.51 1.588 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.308 -0.51 0.960 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.487 -0.51 0.250 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.453 -0.51 -0.482 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.208 -0.51 -1.172 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.774 -0.51 -1.762 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.187 -0.51 -2.200 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.498 -0.51 -2.450 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.234 -0.51 -2.489 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.945 -0.51 -2.314 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.576 -0.51 -1.941 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.071 -0.51 -1.401 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.388 -0.51 -0.740 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.500 -0.51 -0.016 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.397 -0.51 0.709 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.089 -0.51 1.374 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.601 -0.51 1.920 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.975 -0.51 2.302 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.266 -0.51 2.486 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.466 -0.51 2.456 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.158 -0.51 2.216 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.750 -0.51 1.785 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.193 -0.51 1.201 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.447 -0.51 0.514 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.491 -0.51 -0.218 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.320 -0.51 -0.930 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.951 -0.51 -1.563 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.414 -0.51 -2.062 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.756 -0.51 -2.383 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.033 -0.51 -2.500 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.694 -0.51 -2.402 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.360 -0.51 -2.098 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.910 -0.51 -1.613 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.295 -0.51 -0.990 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.484 -0.51 -0.282 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.459 -0.51 0.450 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.223 -0.51 1.143 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.796 -0.51 1.739 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.215 -0.51 2.185 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.530 -0.51 2.443 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.202 -0.51 2.492 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.915 -0.51 2.326 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.550 -0.51 1.961 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.052 -0.51 1.428 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.378 -0.51 0.771 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.500 -0.51 0.049 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.406 -0.51 -0.678 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.106 -0.51 -1.346 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.626 -0.51 -1.899 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.005 -0.51 -2.289 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.299 -0.51 -2.482 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.434 -0.51 -2.462 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.129 -0.51 -2.231 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.727 -0.51 -1.808 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.177 -0.51 -1.229 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.440 -0.51 -0.545 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.493 -0.51 0.185 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.332 -0.51 0.900 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.971 -0.51 1.538 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.441 -0.51 2.043 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.787 -0.51 2.373 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.065 -0.51 2.499 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.662 -0.51 2.411 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.333 -0.51 2.115 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.889 -0.51 1.638 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.001 -0.51 2.500 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.725 -0.51 2.393 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.387 -0.51 2.080 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.931 -0.51 1.588 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.308 -0.51 0.960 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.487 -0.51 0.250 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.453 -0.51 -0.482 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.208 -0.51 -1.172 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.774 -0.51 -1.762 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.187 -0.51 -2.200 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.498 -0.51 -2.450 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.234 -0.51 -2.489 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.945 -0.51 -2.314 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.576 -0.51 -1.941 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.071 -0.51 -1.401 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.388 -0.51 -0.740 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.500 -0.51 -0.016 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.397 -0.51 0.709 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.089 -0.51 1.374 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.601 -0.51 1.920 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.975 -0.51 2.302 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.266 -0.51 2.486 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.466 -0.51 2.456 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.158 -0.51 2.216 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.750 -0.51 1.785 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.193 -0.51 1.201 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.447 -0.51 0.514 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.491 -0.51 -0.218 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.320 -0.51 -0.930 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.951 -0.51 -1.563 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.414 -0.51 -2.062 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.756 -0.51 -2.383 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.033 -0.51 -2.500 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.694 -0.51 -2.402 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.360 -0.51 -2.098 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.910 -0.51 -1.613 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.295 -0.51 -0.990 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.484 -0.51 -0.282 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.459 -0.51 0.450 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.223 -0.51 1.143 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.796 -0.51 1.739 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.215 -0.51 2.185 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.530 -0.51 2.443 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.202 -0.51 2.492 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.915 -0.51 2.326 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.550 -0.51 1.961 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.052 -0.51 1.428 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.378 -0.51 0.771 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.500 -0.51 0.049 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.406 -0.51 -0.678 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.106 -0.51 -1.346 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.626 -0.51 -1.899 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.005 -0.51 -2.289 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.299 -0.51 -2.482 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.434 -0.51 -2.462 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.129 -0.51 -2.231 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.727 -0.51 -1.808 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.177 -0.51 -1.229 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.440 -0.51 -0.545 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.493 -0.51 0.185 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.332 -0.51 0.900 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.971 -0.51 1.538 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.441 -0.51 2.043 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.787 -0.51 2.373 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.065 -0.51 2.499 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.662 -0.51 2.411 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.333 -0.51 2.115 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.889 -0.51 1.638 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.001 -0.51 2.500 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.725 -0.51 2.393 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.387 -0.51 2.080 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.931 -0.51 1.588 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.308 -0.51 0.960 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.487 -0.51 0.250 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.453 -0.51 -0.482 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.208 -0.51 -1.172 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.774 -0.51 -1.762 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.187 -0.51 -2.200 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.498 -0.51 -2.450 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.234 -0.51 -2.489 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.945 -0.51 -2.314 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.576 -0.51 -1.941 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.071 -0.51 -1.401 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.388 -0.51 -0.740 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.500 -0.51 -0.016 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.397 -0.51 0.709 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.089 -0.51 1.374 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.601 -0.51 1.920 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.975 -0.51 2.302 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.266 -0.51 2.486 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.466 -0.51 2.456 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.158 -0.51 2.216 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.750 -0.51 1.785 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.193 -0.51 1.201 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.447 -0.51 0.514 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.491 -0.51 -0.218 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.320 -0.51 -0.930 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.951 -0.51 -1.563 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.414 -0.51 -2.062 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.756 -0.51 -2.383 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.033 -0.51 -2.500 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.694 -0.51 -2.402 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.360 -0.51 -2.098 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.910 -0.51 -1.613 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.295 -0.51 -0.990 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.484 -0.51 -0.282 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.459 -0.51 0.450 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.223 -0.51 1.143 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.796 -0.51 1.739 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.215 -0.51 2.185 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.530 -0.51 2.443 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.202 -0.51 2.492 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.915 -0.51 2.326 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.550 -0.51 1.961 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.052 -0.51 1.428 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.378 -0.51 0.771 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.500 -0.51 0.049 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.406 -0.51 -0.678 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 2.106 -0.51 -1.346 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.626 -0.51 -1.899 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.005 -0.51 -2.289 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.299 -0.51 -2.482 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.434 -0.51 -2.462 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.129 -0.51 -2.231 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.727 -0.51 -1.808 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.177 -0.51 -1.229 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.440 -0.51 -0.545 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.493 -0.51 0.185 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -2.332 -0.51 0.900 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.971 -0.51 1.538 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -1.441 -0.51 2.043 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.787 -0.51 2.373 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ -0.065 -0.51 2.499 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 0.662 -0.51 2.411 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.333 -0.51 2.115 0.34 0 force @a
particle bubble_pop ~ ~0.7 ~ 1.889 -0.51 1.638 0.34 0 force @a