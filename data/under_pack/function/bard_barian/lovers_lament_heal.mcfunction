effect give @s instant_health 1 0 true
damage @s 2 generic
execute if entity @s[team=uBlue] run scoreboard players reset @p[team=uBlue,scores={class=17}] damageTaken
execute if entity @s[team=uRed] run scoreboard players reset @p[team=uRed,scores={class=17}] damageTaken
