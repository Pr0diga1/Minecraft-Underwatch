advancement revoke @s only under_pack:wrench
tp @s ~ ~ ~ ~180 ~
execute if entity @s[team=uBlue] run scoreboard players set @a[team=uRed,scores={class=3},sort=nearest,limit=1] ability2 81
execute if entity @s[team=uRlue] run scoreboard players set @a[team=uBed,scores={class=3},sort=nearest,limit=1] ability2 81