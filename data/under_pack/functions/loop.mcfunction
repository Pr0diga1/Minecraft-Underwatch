#will be in the normal loop because it will need to run even when a game is not active
#number of players with the gazebo tag stored for matchmaking
execute store result score gazebo player_num if entity @a[tag=gazebo]
function under_pack:general_functions/general_trigger

#Only runs the loop code when a match of this gamemode type is active
execute if score under active matches 1 run function under_pack:general_functions/general_loop