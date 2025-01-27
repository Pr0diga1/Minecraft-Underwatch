# Reset death scoreboard
scoreboard players reset @a uDeaths

# Reset other scoreboards
scoreboard players set @s ability1 0
scoreboard players set @s ability2 0
scoreboard players set @s ability3 0

# Reset tags
tag @s remove cloak

# Cloak
item replace entity @s hotbar.1 with carrot_on_a_stick[custom_name='{"bold":true,"color":"#555755","italic":false,"text":"Invisibility Cloak"}',unbreakable={show_in_tooltip:false},custom_data={cloak:1b}] 1
# Swap
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name='{"bold":true,"color":"dark_purple","italic":false,"text":"Friend Swap"}',unbreakable={show_in_tooltip:false},custom_data={swap:1b}] 1
