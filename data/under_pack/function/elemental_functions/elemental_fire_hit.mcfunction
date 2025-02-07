#resets the damage timer
scoreboard players set @s elementalFireHit 0
#summon the arrow for damage
damage @s[team=uRed] 3.75 player_attack by @a[scores={class=12},team=uBlue,limit=1,sort=nearest]
damage @s[team=uBlue] 3.75 player_attack by @a[scores={class=12},team=uRed,limit=1,sort=nearest]