#removes xp
experience set @s 0 levels
experience set @s 0 points

#reset the hit cooldown so players are eligible to be hit by spells
scoreboard players set @a wizardRedHit 0
scoreboard players set @a wizardBlueHit 0
effect give @s regeneration 2 50 true

attribute @s max_health base reset
attribute @s scale base reset
attribute @s max_health base reset
attribute @s minecraft:attack_speed base reset
attribute @s movement_speed base reset

#can cap on points
scoreboard players set @s cantCap 0