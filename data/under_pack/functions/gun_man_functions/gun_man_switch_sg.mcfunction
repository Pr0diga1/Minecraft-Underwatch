execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b,blue:1b}
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with ender_eye{CustomModelData:4,display:{Name:'{"text":"Rifle","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunar:1b,red:1b}
playsound block.piston.contract master @s ~ ~ ~

kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gunsg:1b,red:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gunsg:1b,blue:1b}}}]

#play piston contract on swapback
