#detect carrot on stick
execute as @s[nbt={Inventory:[{Slot:0b,tag:{wizardWand:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wizardWand:1b}}},scores={reset=1..}] if score @s ability3 matches 50.. run function under_pack:wizard_functions/wizard_spell
execute as @s[nbt={Inventory:[{Slot:3b,tag:{wizardClaws:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wizardClaws:1b}}},scores={reset=1..}] if score @s ability2 matches 300.. run function under_pack:wizard_functions/wizard_claws
execute as @s[nbt={Inventory:[{Slot:2b,tag:{wizardGay:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wizardGay:1b}}},scores={reset=1..}] if score @s ability1 matches 300.. run function under_pack:wizard_functions/wizard_rainbow

#detection for the split
execute as @s[team=uRed,nbt={Inventory:[{Slot:0b,tag:{wizardWand:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wizardWand:1b}}},scores={reset=1..}] as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_split_red
execute as @s[team=uBlue,nbt={Inventory:[{Slot:0b,tag:{wizardWand:1b}}],SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{wizardWand:1b}}},scores={reset=1..}] as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_split_blue

#detect snowball
execute as @s[team=uRed] if entity @e[type=snowball,nbt={Item:{tag:{wizardFireball:1b,red:1b}}}] at @s run function under_pack:wizard_functions/wizard_fireball_red
execute as @s[team=uBlue] if entity @e[type=snowball,nbt={Item:{tag:{wizardFireball:1b,blue:1b}}}] at @s run function under_pack:wizard_functions/wizard_fireball_blue

#reset reset
scoreboard players reset @s reset

#fireball set its velo
execute as @e[type=fireball,tag=!fireballMoved,tag=redWizardFireball] at @s rotated as @p[team=uRed] run function under_pack:wizard_functions/wizard_fireball_velo
execute as @e[type=fireball,tag=!fireballMoved,tag=blueWizardFireball] at @s rotated as @p[team=uBlue] run function under_pack:wizard_functions/wizard_fireball_velo

#move the spells 3 times per tick
execute as @s[team=uRed] as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uBlue] as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uRed] as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uBlue] as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uRed] as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uBlue] as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uRed] as @e[type=marker,tag=redWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick
execute as @s[team=uBlue] as @e[type=marker,tag=blueWizardSpell] at @s run function under_pack:wizard_functions/wizard_spell_big_tick

#move the little spells once per tick
execute as @s[team=uRed] as @e[type=marker,tag=redWizardSpellSmall] at @s run function under_pack:wizard_functions/wizard_spell_small_tick
execute as @s[team=uBlue] as @e[type=marker,tag=blueWizardSpellSmall] at @s run function under_pack:wizard_functions/wizard_spell_small_tick

#move the rainbow spells once per tick
execute as @s[team=uRed] as @e[type=marker,tag=redWizardRainbow] at @s run function under_pack:wizard_functions/wizard_rainbow_tick
execute as @s[team=uBlue] as @e[type=marker,tag=blueWizardRainbow] at @s run function under_pack:wizard_functions/wizard_rainbow_tick

#counts down for people who have been hit by spells
execute as @s[team=uBlue] run scoreboard players remove @a[scores={wizardBlueHit=1..}] wizardBlueHit 1
execute as @s[team=uRed] run scoreboard players remove @a[scores={wizardRedHit=1..}] wizardRedHit 1

#wizard curse logic
execute if score @s wizardCurse matches 1 at @s anchored eyes positioned ^ ^ ^ anchored feet run function under_pack:wizard_functions/wizard_homing_target

execute if score @s wizardCurse matches 1.. if score @s wizardCurseBuffer = @s wizardCurse run function under_pack:wizard_functions/wizard_homing_released

#set the buffer for next tick
scoreboard players operation @s wizardCurseBuffer = @s wizardCurse

execute if entity @s[team=uRed] as @a[nbt={ActiveEffects:[{Id:25,Amplifier:0b,Duration:199}]},team=uBlue] run function under_pack:wizard_functions/wizard_homing_hit
execute if entity @s[team=uBlue] as @a[nbt={ActiveEffects:[{Id:25,Amplifier:0b,Duration:199}]},team=uRed] run function under_pack:wizard_functions/wizard_homing_hit

#run the cooldown
function under_pack:wizard_functions/wizard_cooldown