#revoke the advancement
advancement revoke @s only under_pack:eye
kill @e[type=eye_of_ender]

#call the functions
execute as @s[scores={class=4}] run function under_pack:knight_functions/knight_block
execute as @s[scores={class=3}] run function under_pack:engineer_functions/engineer_eye
execute as @s[scores={class=10}] run function under_pack:wizard_functions/wizard_eye
execute as @s[scores={class=11}] run function under_pack:mermaid_functions/mermaid_mist
execute as @s[scores={class=12}] run function under_pack:elemental_functions/elemental_fire_held
execute as @s[scores={class=13},nbt={SelectedItem:{tag:{humanity:1b}}}] if score @s ability2 matches 0 run function under_pack:dark_soul_functions/humanity
execute as @s[scores={class=13},nbt={SelectedItem:{tag:{estus:1b}}}] if score @s ability3 matches 0 run function under_pack:dark_soul_functions/estus
execute as @s[scores={class=14}] if score @s ability1 matches 0 run function under_pack:gun_man_functions/gun_ar
