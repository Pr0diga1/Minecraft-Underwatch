#detect when crossbows are shot
execute if score @s wizardCrossbow matches 1.. run function under_pack:wizard_functions/wizard_check
scoreboard players set @s wizardCrossbow 0

#detect carrot on stick

#detect snowball
execute as @s[team=uRed] if entity @e[type=snowball,nbt={Item:{tag:{wizardFireball:1b,red:1b}}}] at @s run function under_pack:wizard_functions/wizard_fireball_red
execute as @s[team=uBlue] if entity @e[type=snowball,nbt={Item:{tag:{wizardFireball:1b,blue:1b}}}] at @s run function under_pack:wizard_functions/wizard_fireball_blue

#reset reset
scoreboard players reset @s reset

#replace the firework
execute unless entity @s[nbt={Inventory:[{id:"minecraft:firework_rocket"},{Slot:-106b}]}] run item replace entity @s weapon.offhand with firework_rocket{display:{Name:'{"text":"Abyssal Voidwrath","color":"black","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"imbued with the power of the abyss"}']},Fireworks:{Flight:1b,Explosions:[{Type:2,Flicker:1b,Colors:[I;0,0]}]}} 1

#fireball set its velo
execute as @e[type=fireball,tag=!fireballMoved,tag=redWizardFireball] at @s rotated as @p[team=uRed] run function under_pack:wizard_functions/wizard_fireball_velo
execute as @e[type=fireball,tag=!fireballMoved,tag=blueWizardFireball] at @s rotated as @p[team=uBlue] run function under_pack:wizard_functions/wizard_fireball_velo

#run the cooldown
function under_pack:wizard_functions/wizard_cooldown