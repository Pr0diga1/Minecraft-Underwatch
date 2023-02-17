# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2] add target

# Make item if new one is found
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2] add target

# Make item if new one is found
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2] add target

# Make item if new one is found
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2] add target

# Make item if new one is found
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s