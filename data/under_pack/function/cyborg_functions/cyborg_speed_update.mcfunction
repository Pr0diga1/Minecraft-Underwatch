#get the accel level
scoreboard players operation @s cyborgaccellevelbuffer = @s cyborgaccellevel


#find the new speed value
scoreboard players operation @s cyborgaccellevelbuffer *= speedstep constant
scoreboard players operation @s cyborgaccellevelbuffer += 100 constant
execute store result storage cyborg accel.speed double .001 run scoreboard players get @s cyborgaccellevelbuffer 

#find the new attack speed value
scoreboard players operation @s cyborgaccellevelbuffer = @s cyborgaccellevel
scoreboard players operation @s cyborgaccellevelbuffer *= attackstep constant
scoreboard players operation @s cyborgaccellevelbuffer += 4000 constant
execute store result storage cyborg accel.attack double .001 run scoreboard players get @s cyborgaccellevelbuffer 

#change them
function under_pack:cyborg_functions/cyborg_speed_attributes with storage cyborg accel