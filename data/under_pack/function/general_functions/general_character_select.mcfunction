#removes xp
experience set @s 0 levels
experience set @s 0 points

#reset the hit cooldown so players are eligible to be hit by spells
scoreboard players set @a wizardRedHit 0
scoreboard players set @a wizardBlueHit 0

#do damage and health to clear extra hearts
execute as @s[scores={heart=13..20}] run effect give @s instant_damage 1 1
execute as @s[scores={heart=21..}] run effect give @s instant_damage 1 2
effect give @s regeneration 2 50 true

#can cap on points
scoreboard players set @s cantCap 0