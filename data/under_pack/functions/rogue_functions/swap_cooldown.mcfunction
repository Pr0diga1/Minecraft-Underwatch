# Timer
scoreboard players remove @s ability3 1

# Texture pack display
item modify entity @s hotbar.2 under_pack:rogue/swap_cooldown

# Cooldown over
execute if score @s ability3 matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Friend Swap","color":"dark_purple","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:26,swap:1b} 1
