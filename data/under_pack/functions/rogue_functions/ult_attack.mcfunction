# IDs locked targets to count and order them
scoreboard players set ID constant 0
execute if entity @s[team=uBlue] as @a[team=uRed,tag=target_locked] run function under_pack:rogue_functions/target_id
execute if entity @s[team=uRed] as @a[team=uBlue,tag=target_locked] run function under_pack:rogue_functions/target_id

# Tags you for this action
tag @s add executing

# 