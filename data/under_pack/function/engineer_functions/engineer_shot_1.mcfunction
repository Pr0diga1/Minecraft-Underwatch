scoreboard players operation $speed.x engineercap = $motion.x engineercap
scoreboard players operation $speed.x engineercap /= $motion.unit.x engineercap
scoreboard players operation $speed.y engineercap = $motion.y engineercap
scoreboard players operation $speed.y engineercap /= $motion.unit.y engineercap
scoreboard players operation $speed.z engineercap = $motion.z engineercap
scoreboard players operation $speed.z engineercap /= $motion.unit.z engineercap

scoreboard players operation $speed engineercap = $speed.x engineercap
scoreboard players operation $speed engineercap > $speed.y engineercap
scoreboard players operation $speed engineercap > $speed.z engineercap


execute unless score $speed engineercap matches 92.. run tag @s add sb.finished