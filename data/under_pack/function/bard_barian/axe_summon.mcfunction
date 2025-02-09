# Reset scoreboard
scoreboard players set @s ability2 20

# Summon note and target team
execute if entity @s[team=uBlue] positioned ~ ~1 ~ run return run summon marker ~ ~ ~ {Tags:["Note","uBlue"]}
execute if entity @s[team=uRed] positioned ~ ~1 ~ run summon marker ~ ~ ~ {Tags:["Note","uRed"]}
