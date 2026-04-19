# Reset scoreboard
scoreboard players set @s ability2 40

# Summon note and target team
execute if entity @s[team=uBlue] run return run summon marker ~ ~1 ~ {Tags:["Note","uBlue"]}
execute if entity @s[team=uRed] run summon marker ~ ~1 ~ {Tags:["Note","uRed"]}
