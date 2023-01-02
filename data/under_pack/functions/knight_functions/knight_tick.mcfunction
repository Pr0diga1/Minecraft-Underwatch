#detects when abilities are used
execute if entity @s[nbt={Inventory:[{Slot:1b,tag:{knightheal:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{knightheal:1b}}},scores={reset=1..}] as @s run function under_pack:knight_functions/knight_heal
execute if entity @s[nbt={Inventory:[{Slot:8b,tag:{knightult:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{knightult:1b}}},scores={reset=1..}] as @s run function under_pack:knight_functions/knight_ult

function under_pack:knight_functions/knight_cooldown
#heal cooldown
execute if score @s movement matches ..240 run scoreboard players add @s movement 1
execute if score @s movement matches 240 run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"Self Heal","color":"gold"}'},knightheal:1b} 1
#bomb!!!!!!!
function under_pack:knight_functions/knight_bomb
#bomb cooldown
execute if score @s ability1 matches ..180 run scoreboard players add @s ability1 1
execute if entity @s[team=uRed] if score @s ability1 matches 180 run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Impact Grenade","color":"dark_green"}'},knightbomb:1b,red:1b} 1
execute if entity @s[team=uBlue] if score @s ability1 matches 180 run item replace entity @s hotbar.2 with snowball{display:{Name:'{"text":"Impact Grenade","color":"dark_green"}'},knightbomb:1b,blue:1b} 1
#stopsounds for the block
stopsound @a * minecraft:entity.ender_eye.launch
stopsound @a * minecraft:entity.ender_eye.death
#eye of ender kill for block
kill @e[type=eye_of_ender]
#run block end the tick after block is done
execute if score @s blockIsActive matches 0.. run scoreboard players remove @s blockIsActive 1
execute if score @s blockIsActive matches 0 run function under_pack:knight_functions/knight_block_end

#ult tracking
scoreboard players add @s ultTicks 1
function under_pack:knight_functions/knight_ult_track

item replace entity @s hotbar.0 with ender_eye{display:{Name:'{"text":"Knightly Sword","color":"white"}',Lore:['{"text":"Only given to those worthy"}']},HideFlags:7,Unbreakable:1b,knightsword:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1659789565,1414549155,-1199815574,-438496725]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;957298814,-795131512,-2008112315,-1424705865]}]} 2


