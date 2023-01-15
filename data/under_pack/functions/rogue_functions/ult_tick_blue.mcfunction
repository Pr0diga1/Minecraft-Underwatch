# Removes in tag for everyone
tag @a remove in_ult

# Teleports back to the player
tp @s @p[team=uBlue,scores={rogueUltActive=1..}]
execute at @p[team=uBlue,scores={rogueUltActive=1..}] run tp ^ ^1 ^1

# Checks for players on the opposite team in an area, and adds the in tag to those within that area
tag @a[team=uRed,distance=..0.5] add in_ult

tp ^ ^ ^2
tag @a[team=uRed,distance=..1] add in_ult

tp ^ ^ ^4
tag @a[team=uRed,distance=..2] add in_ult

tp ^ ^ ^6
tag @a[team=uRed,distance=..3] add in_ult

# Incriments lockon scoreboard
scoreboard players add @a[team=uRed,tag=in_ult,scores={rogueUltTiming=..40}] rogueUltTiming 1
execute at @a[team=uRed,tag=in_ult,scores={rogueUltTiming=..40}] run particle dust 0 0 1 2 ~ ~4 ~ 0 1 0 1 10 normal

# Give locked targets necessary stuff
tag @a[team=uRed,tag=in_ult,scores={rogueUltTiming=41..}] add target_locked
effect give @a[team=uRed,tag=target_locked] glowing 1 0 true

# Unlocks/resets lockon when not in range
scoreboard players reset @a[team=uRed,tag=!in_ult] rogueUltTiming
tag @a[team=uRed,tag=!in_ult,tag=target_locked] remove target_locked