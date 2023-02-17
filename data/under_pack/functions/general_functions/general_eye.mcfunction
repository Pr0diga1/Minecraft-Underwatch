#revoke the advancement
advancement revoke @s only under_pack:eye
kill @e[type=eye_of_ender]

#call the functions
execute as @s[scores={class=4}] run function under_pack:knight_functions/knight_block
execute as @s[scores={class=10}] run function under_pack:wizard_functions/wizard_homing