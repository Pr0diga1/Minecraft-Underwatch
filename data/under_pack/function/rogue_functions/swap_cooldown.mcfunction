# Timer
scoreboard players remove @s ability3 1

# Texture pack display
item modify entity @s hotbar.2 under_pack:rogue/swap_cooldown

# Cooldown over
execute if score @s ability3 matches 1 run item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"}',unbreakable={},custom_model_data=26,custom_data={swap:1b}] 1
