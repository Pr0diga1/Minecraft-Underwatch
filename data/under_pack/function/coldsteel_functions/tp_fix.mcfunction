execute unless entity @s as @e[type=ender_pearl,tag=fix] run function under_pack:coldsteel_functions/tp_fix
tag @s remove fix
execute store result entity @s Air short 1 run time query gametime