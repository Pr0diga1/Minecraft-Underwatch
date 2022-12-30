#when you get a kill, you get 10 ult charge
execute if score @s vanitykills matches 1.. run experience add @s 10 levels
execute if score @s vanitykills matches 1.. run scoreboard players add @s lumberjack_ult_charge 10
execute if score @s vanitykills matches 1.. run scoreboard players set @s vanitykills 0
#gives ult charge based on how much damage you deal
execute if score @s damage matches 1..24 run experience add @s 1 levels
execute if score @s damage matches 1..24 run scoreboard players add @s lumberjack_ult_charge 1
execute if score @s damage matches 25..49 run experience add @s 2 levels
execute if score @s damage matches 25..49 run scoreboard players add @s lumberjack_ult_charge 2
execute if score @s damage matches 50..74 run experience add @s 3 levels
execute if score @s damage matches 50..74 run scoreboard players add @s lumberjack_ult_charge 3
execute if score @s damage matches 75..100 run experience add @s 4 levels
execute if score @s damage matches 75..100 run scoreboard players add @s lumberjack_ult_charge 4
execute if score @s damage matches 100.. run experience add @s 5 levels
execute if score @s damage matches 100.. run scoreboard players add @s lumberjack_ult_charge 5
execute if score @s damage matches 1.. run scoreboard players set @s damage 0
#1 charge every 2.4 seconds 
scoreboard players add @s lumberjack_ult_timer 1
execute if score @s lumberjack_ult_timer matches 48.. run experience add @s 1 levels
execute if score @s lumberjack_ult_timer matches 48.. run scoreboard players add @s lumberjack_ult_charge 1
execute if score @s lumberjack_ult_timer matches 48.. run scoreboard players set @s lumberjack_ult_timer 0
#makes sure that ult charge can't go above 100
execute if score @s lumberjack_ult_charge matches 100.. run scoreboard players set @s lumberjack_ult_charge 100
execute if score @s lumberjack_ult_charge matches 100.. run experience set @s 100 levels
#gives you the ult when at 100 charge
execute if score @s lumberjack_ult_charge matches 100.. run item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Axe Drop","color":"black"}'},lumberdrop:1b} 1

