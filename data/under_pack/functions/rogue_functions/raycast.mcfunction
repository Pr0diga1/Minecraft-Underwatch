# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute as @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] run say hi

# Make item if new one is found
execute if entity @s[tag=uBlue] as @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute if entity @s[tag=uRed] as @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #under_pack:non_solid run tag @a[tag=swap] remove swap
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute as @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] run say hi

# Make item if new one is found
execute if entity @s[tag=uBlue] as @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute if entity @s[tag=uRed] as @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #under_pack:non_solid run tag @a[tag=swap] remove swap
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute as @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] run say hi

# Make item if new one is found
execute if entity @s[tag=uBlue] as @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute if entity @s[tag=uRed] as @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #under_pack:non_solid run tag @a[tag=swap] remove swap
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

# Teleport
tp ^ ^ ^1

# Find target
execute if entity @s[tag=uBlue] run tag @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute if entity @s[tag=uRed] run tag @a[team=uRed,limit=1,sort=nearest,distance=..2,tag=!swap] add target
execute as @a[team=uBlue,limit=1,sort=nearest,distance=..2,tag=!swap] run say hi

# Make item if new one is found
execute if entity @s[tag=uBlue] as @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute if entity @s[tag=uRed] as @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target

# Kill self if target found or inside a block
execute unless block ~ ~ ~ #under_pack:non_solid run tag @a[tag=swap] remove swap
execute unless block ~ ~ ~ #under_pack:non_solid run kill @s
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run tag @a[tag=swap,team=uBlue] remove swap
execute as @s[tag=uBlue] if entity @a[tag=target,team=uBlue] run kill @s
execute as @s[tag=uRed] if entity @a[tag=target,team=uRed] run kill @s

kill @s