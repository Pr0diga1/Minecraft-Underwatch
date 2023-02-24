#run each map's death function
execute if score gazebo swag matches 1 as @s[tag=gazebo] run function under_pack:gazebo_functions/gazebo_death
execute if score park swag matches 1 as @s[tag=park] run function under_pack:park_functions/park_death
execute if score ruin swag matches 1 as @s[tag=ruin] run function under_pack:ruin_functions/ruin_death
execute if score res swag matches 1 as @s[tag=res] run function under_pack:res_functions/res_death
execute if score cityDM swag matches 1 as @s[tag=city] run function under_pack:city_functions/city_death
execute if score cityPOINT swag matches 1 as @s[tag=city] run function under_pack:city_functions/city_death

#set deaths back to 0 so this isn't run every tick
scoreboard players set @s uDeaths 0