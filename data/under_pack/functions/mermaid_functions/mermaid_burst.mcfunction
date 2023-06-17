scoreboard players set @s mermaidburst 0
execute if entity @s[team=uRed] at @s as @a[distance=..2,team=uBlue] run damage @s 6 generic by @a[team=uRed,limit=1,scores={class=11}]
execute if entity @s[team=uBlue] at @s as @a[distance=..2,team=uRed] run damage @s 6 generic by @a[team=uBlue,limit=1,scores={class=11}]