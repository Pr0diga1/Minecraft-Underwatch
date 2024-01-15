#will be in the normal loop because it will need to run even when a game is not active
function under_pack:general_functions/general_trigger

#Only runs the loop code when a match of this gamemode type is active
function under_pack:general_functions/general_loop

#cant drop items
#execute as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
#execute as @e[type=item] run data modify entity @s PickupDelay set value 0s
#execute as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# Debug mode (for testing on singleplayer.)
# (I dont want to deal with the implications on multyplayer or in the actual architecture of the server)
execute if score debug buffer matches 1 as @a run function debug:ticks/tick