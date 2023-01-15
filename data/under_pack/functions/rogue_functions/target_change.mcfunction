# Remove tags for Blue Player
execute as @s[team=uBlue] run tag @a[team=uRed,tag=the_target] remove target_locked
execute as @s[team=uBlue] run scoreboard players reset @a[team=uRed,tag=the_target] rogueUltTiming
execute as @s[team=uBlue] run scoreboard players reset @a[team=uRed,tag=the_target] rogueUltTimingBuffer
execute as @s[team=uBlue] run tag @a[team=uRed,tag=the_target] remove the_target

# Remove tags for Red Player
execute as @s[team=uRed] run tag @a[team=uBlue,tag=the_target] remove target_locked
execute as @s[team=uRed] run scoreboard players reset @a[team=uBlue,tag=the_target] rogueUltTiming
execute as @s[team=uRed] run scoreboard players reset @a[team=uBlue,tag=the_target] rogueUltTimingBuffer
execute as @s[team=uRed] run tag @a[team=uBlue,tag=the_target] remove the_target

# Change the target scoreboard ID
execute if entity @s[team=uBlue] run scoreboard players remove IDBlue constant 1
execute if entity @s[team=uRed] run scoreboard players remove IDRed constant 1