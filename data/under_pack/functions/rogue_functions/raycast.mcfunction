#the marker has existed for another tick
scoreboard players add distance buffer 1

#kill the marker if its in a block or has existed for 4 seconds
execute unless block ~ ~ ~ #under_pack:non_solid run scoreboard players set hit buffer 1

#hits a player
execute if entity @s[team=uRed] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uRed,limit=1,sort=nearest,tag=!swap] run tag @s add target
execute if entity @s[team=uBlue] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,team=uBlue,limit=1,sort=nearest,tag=!swap] run tag @s add target

# detect for this
execute if entity @s[team=uBlue] if entity @a[tag=target,team=uBlue] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute if entity @s[team=uRed] if entity @a[tag=target,team=uRed] run item modify entity @s hotbar.3 under_pack:rogue/swap_target
execute if entity @s[team=uBlue] if entity @a[tag=target,team=uBlue] run tag @s remove swap
execute if entity @s[team=uRed] if entity @a[tag=target,team=uRed] run tag @s remove swap

#rerun command
execute if entity @s[team=uBlue] if score hit buffer matches 0 unless entity @a[tag=target,team=uBlue] if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:rogue_functions/raycast
execute if entity @s[team=uRed] if score hit buffer matches 0 unless entity @a[tag=target,team=uRed] if score distance buffer matches ..180 positioned ^ ^ ^.5 run function under_pack:rogue_functions/raycast