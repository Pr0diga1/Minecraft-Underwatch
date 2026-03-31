#detection for the split
execute as @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{wizardWand:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wizardWand:1b}}}},scores={reset=1..}] as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_split_blue

#dfireball w/ wand
execute as @s[scores={wizardFireball=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,blue:1b}}}}] at @s run function under_pack:wizard_functions/wizard_fireball_blue
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,blue:1b}}}}] run kill @s

#fireball w/ eye
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1,components:{"minecraft:custom_data":{wizardFire:1b,blue:1b}}}}] at @s on origin as @s[scores={wizardFireball=1..}] run function under_pack:wizard_functions/wizard_fireball_blue
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1,components:{"minecraft:custom_data":{wizardFire:1b,blue:1b}}}}] run kill @s

#give the wand and fireball back if they were dropped
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"},{Slot:0b}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name={"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"},lore=["Crafted from the tree of Lofaktar"],custom_data={wizardWand:1b,blue:1b},item_model="breeze_rod"] 1
execute unless entity @s[nbt={Inventory:[{id:"minecraft:blaze_powder"},{Slot:1b}]}] run item replace entity @s hotbar.1 with blaze_powder[consumable={consume_seconds:10000,animation:"spear"},custom_name={"bold":true,"color":"gold","italic":true,"text":"Become Fire"},lore=["'fireball'- Archmage Pitbull"],custom_data={wizardFire:1b,blue:1b}] 1


#fireball set its velo
execute as @e[type=fireball,tag=!fireballMoved,tag=blueWizardFireball] at @s rotated as @a[team=uBlue,limit=1,sort=nearest,scores={class=10}] run function under_pack:wizard_functions/wizard_fireball_velo

#move the spells 3 times per tick
execute as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick

#move the little spells once per tick
execute as @e[type=marker,tag=blueWizardSpellSmall] at @s run function under_pack:wizard_functions/wizard_spell_small_tick

#counts down for people who have been hit by spells
execute run scoreboard players remove @a[scores={wizardBlueHit=1..}] wizardBlueHit 1

#detect if players were hit by the curse!
execute as @a[predicate=under_pack:wizard_levitation_check,team=uRed] run function under_pack:wizard_functions/wizard_homing_hit
