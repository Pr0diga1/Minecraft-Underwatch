scoreboard players operation $speed.x archerRay = $motion.x archerRay
scoreboard players operation $speed.x archerRay /= $motion.unit.x archerRay
scoreboard players operation $speed.y archerRay = $motion.y archerRay
scoreboard players operation $speed.y archerRay /= $motion.unit.y archerRay
scoreboard players operation $speed.z archerRay = $motion.z archerRay
scoreboard players operation $speed.z archerRay /= $motion.unit.z archerRay

scoreboard players operation $speed archerRay = $speed.x archerRay
scoreboard players operation $speed archerRay > $speed.y archerRay
scoreboard players operation $speed archerRay > $speed.z archerRay


execute unless score $speed archerRay matches 92.. run tag @s add sb.finished