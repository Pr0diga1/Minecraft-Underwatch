advancement revoke @s only under_pack:wrench
tp @s ~ ~ ~ ~90 ~
execute if entity @s[team=uBlue] run scoreboard players set @a[team=uRed,scores={class=3},sort=nearest,limit=1] ability3 161
execute if entity @s[team=uRed] run scoreboard players set @a[team=uBlue,scores={class=3},sort=nearest,limit=1] ability3 161