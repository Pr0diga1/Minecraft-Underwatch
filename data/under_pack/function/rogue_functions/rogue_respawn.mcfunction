# Reset death scoreboard
scoreboard players reset @a uDeaths

# Reset other scoreboards
scoreboard players reset @s ability1
scoreboard players reset @s ability2
scoreboard players reset @s ability3

# Reset tags
tag @s remove cloak

#clean swap tags
tag @s remove swap
tag @s remove target

# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name={"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"},unbreakable={},custom_data={cloak:1b}] 1
# Swap
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"},unbreakable={},custom_data={swap:1b}] 1
