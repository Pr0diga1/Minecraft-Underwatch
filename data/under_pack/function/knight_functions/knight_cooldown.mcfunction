#heal cooldown indications
item modify entity @s hotbar.1 under_pack:knight/heal

#bomb cooldown indications
item modify entity @s hotbar.2 under_pack:knight/bomb
execute if score @s ability1 matches 179 run item replace entity @s hotbar.2 with barrier[custom_name='"BOMB!!! on Cooldown"'] 9

