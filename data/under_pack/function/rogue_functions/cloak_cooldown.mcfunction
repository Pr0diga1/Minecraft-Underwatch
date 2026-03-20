# Timer
scoreboard players remove @s ability1 1

# Texture pack display
item modify entity @s hotbar.1 under_pack:rogue/cloak_countdown

# Cooldown over
execute if score @s ability1 matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"}',unbreakable={},custom_data={cloak:1b}] 1
