# Set ult as active
scoreboard players set @s rogueUltActive 1

# Summon rays
execute if entity @s[team=uBlue] run summon marker ^ ^1 ^1 {Tags:["rougeUlt","uBlue"]}
execute if entity @s[team=uRed] run summon marker ^ ^1 ^1 {Tags:["rougeUlt","uRed"]}

# Gives item to complete
item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Execute Targets","color":"#940000","bold":true,"italic":false,"underlined":true}'},Unbreakable:1b,CustomModelData:44,useUlt:1b} 1

# Summon place to be tp'd to
summon marker ~ ~ ~ {Tags:["tp_to"]}