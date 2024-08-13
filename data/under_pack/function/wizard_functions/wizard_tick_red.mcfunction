#detection for the split
execute as @s[nbt={Inventory:[{Slot:0b,components:{"minecraft:custom_data":{wizardWand:1b}}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{wizardWand:1b}}}},scores={reset=1..}] as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_split_red

#dfireball w/ wand
execute as @s[scores={wizardFireball=1..}] if entity @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,red:1b}}}}] at @s run function under_pack:wizard_functions/wizard_fireball_red
execute as @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_data":{wizardWand:1b,red:1b}}}}] run kill @s

#fireball w/ eye
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_data":{wizardFire:1b,red:1b}}}}] at @s on origin as @s[scores={wizardFireball=1..}] run function under_pack:wizard_functions/wizard_fireball_red
execute as @e[type=item,nbt={Item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:custom_data":{wizardFire:1b,red:1b}}}}] run kill @s

#give the wand and fireball back if they were dropped
execute unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick"},{Slot:0b}]}] run item replace entity @s hotbar.0 with carrot_on_a_stick[custom_name='{"bold":true,"color":"light_purple","italic":true,"text":"Agicmay Andway"}',lore=['"Crafted from the tree of Lofaktar"'],custom_model_data=45,custom_data={wizardWand:1b,red:1b}] 1
execute unless entity @s[nbt={Inventory:[{id:"minecraft:ender_eye"},{Slot:1b}]}] run item replace entity @s hotbar.1 with ender_eye[custom_name='{"bold":true,"color":"gold","italic":true,"text":"Become Fire"}',lore=['"\'fireball\' - Pitbull"'],custom_data={wizardFire:1b,red:1b}] 1

#fireball set its velo
execute as @e[type=fireball,tag=!fireballMoved,tag=redWizardFireball] at @s rotated as @a[team=uRed,limit=1,sort=nearest,scores={class=10}] run function under_pack:wizard_functions/wizard_fireball_velo

#move the spells 3 times per tick
execute as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick

#move the little spells once per tick
execute as @e[type=marker,tag=redWizardSpellSmall] at @s run function under_pack:wizard_functions/wizard_spell_small_tick

#counts down for people who have been hit by spells
execute run scoreboard players remove @a[scores={wizardRedHit=1..}] wizardRedHit 1

#detect if players were hit by the curse!
execute as @a[predicate=under_pack:wizard_levitation_check,team=uBlue] run function under_pack:wizard_functions/wizard_homing_hit
