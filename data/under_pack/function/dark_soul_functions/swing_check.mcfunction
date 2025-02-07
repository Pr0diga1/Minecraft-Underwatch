# if we just started swinging run swing_start
execute as @s[team=uBlue] unless entity @e[tag=aj.animations.root,tag=uBlue] run return run function under_pack:dark_soul_functions/swing_start
execute as @s[team=uRed] unless entity @e[tag=aj.animations.root,tag=uRed] run return run function under_pack:dark_soul_functions/swing_start

# check whether its a right swing or left swing
execute if entity @s[tag=swinging] run return run function under_pack:dark_soul_functions/swing_2
function under_pack:dark_soul_functions/swing_1