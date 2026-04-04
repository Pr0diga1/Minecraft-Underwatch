#give the crossbow
item replace entity @s[team=uRed] hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"},lore=["Crafted from the tree of Lofaktar"],custom_data={wizardWand:1b,red:1b},item_model="stick"] 1
item replace entity @s[team=uBlue] hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"},lore=["Crafted from the tree of Lofaktar"],custom_data={wizardWand:1b,blue:1b},item_model="stick"] 1

#fireball
execute as @s[team=uRed] run item replace entity @s hotbar.1 with blaze_powder[consumable={consume_seconds:10000,animation:"spear"},custom_name={"bold":true,"color":"gold","italic":true,"text":"Become Fire"},lore=["'fireball'- Archmage Pitbull"],custom_data={wizardFire:1b,red:1b}] 1
execute as @s[team=uBlue] run item replace entity @s hotbar.1 with blaze_powder[consumable={consume_seconds:10000,animation:"spear"},custom_name={"bold":true,"color":"gold","italic":true,"text":"Become Fire"},lore=["'fireball'- Archmage Pitbull"],custom_data={wizardFire:1b,blue:1b}] 1

#evoker fang shot
#the claws of rachivalishize
item replace entity @s hotbar.2 with carrot_on_a_stick[custom_name={"color":"dark_green","text":"The Claws of Rachivalishize"},unbreakable={},custom_data={wizardClaws:1b},item_model="closed_eyeblossom"] 1

#curse
item replace entity @s hotbar.3 with ender_eye[custom_name=[{"bold":false,"color":"black","italic":false,"obfuscated":true,"strikethrough":false,"text":"fgh","underlined":false},{"bold":true,"color":"black","italic":true,"obfuscated":false,"strikethrough":false,"text":"Curse","underlined":false},{"bold":false,"italic":false,"obfuscated":true,"strikethrough":false,"text":"fgh"}]] 1

#ability cooldowns
scoreboard players set @s movement 0
scoreboard players set @s wizardFireball 3
scoreboard players set @s ability1 299
scoreboard players set @s ability2 1
scoreboard players set @s ability3 50
scoreboard players set @s ability4 39
scoreboard players set @s ability5 0

experience set @s 100 levels
experience set @s 742 points

kill @e[tag=wizardboom]