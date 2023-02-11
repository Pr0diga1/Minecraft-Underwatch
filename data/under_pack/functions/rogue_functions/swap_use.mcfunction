# Mark rouge's pos
summon marker ~ ~ ~ {Tags:["teleport"]}

# Teleport to the target
execute if entity @s[team=uBlue] run teleport @a[tag=target,team=uBlue]
execute if entity @s[team=uRed] run teleport @a[tag=target,team=uRed]

# Teleport target to where rouge is
execute if entity @s[team=uBlue] run teleport @a[tag=target,team=uBlue] @e[tag=teleport,limit=1]
execute if entity @s[team=uRed] run teleport @a[tag=target,team=uRed] @e[tag=teleport,limit=1]

# Kill marker
execute if entity @s[team=uBlue] at @a[tag=target,team=uBlue] run kill @e[tag=teleport,limit=1,sort=nearest]
execute if entity @s[team=uRed] at @a[tag=target,team=uRed] run kill @e[tag=teleport,limit=1,sort=nearest]

# Untag target
execute if entity @s[team=uBlue] run tag @a[tag=target,team=uBlue] remove target
execute if entity @s[team=uBlue] run tag @a[tag=target,team=uRed] remove target

# Cooldown init
item replace entity @s hotbar.3 with barrier{CustomModelData:9}
scoreboard players set @s ability3 201

scoreboard players reset @s reset