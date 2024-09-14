advancement revoke @s only under_pack:eye_start
execute if score @s blockIsActive matches 0 run effect clear @s resistance
item modify entity @s hotbar.0 under_pack:knight/shield_down