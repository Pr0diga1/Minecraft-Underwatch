execute if entity @s[team=uBlue] run item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:52,display:{Name:'{"text":"Shotgun","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunsg:1b,blue:1b}
execute if entity @s[team=uRed] run item replace entity @s hotbar.0 with carrot_on_a_stick{CustomModelData:52,display:{Name:'{"text":"Shotgun","color":"white"}',Lore:['{"text":"its a gun."}']},HideFlags:5,gunsg:1b,red:1b}
playsound block.piston.extend master @s ~ ~ ~

kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b,tag:{gunar:1b,red:1b}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:1b,tag:{gunar:1b,blue:1b}}}]

#play piston contract on swapback
