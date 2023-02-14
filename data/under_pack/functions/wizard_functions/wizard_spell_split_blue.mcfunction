#summon the markers
summon marker ^.05 ^.05 ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^.05 ^.05 ^-.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^-.05 ^.05 ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^-.05 ^.05 ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^.05 ^-.05 ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^.05 ^-.05 ^-.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^-.05 ^-.05 ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^-.05 ^-.05 ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^ ^ ^.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^ ^ ^-.05 {Tags:["blueWizardSpellSmall"]}
summon marker ^-.05 ^ ^ {Tags:["blueWizardSpellSmall"]}
summon marker ^.05 ^ ^ {Tags:["blueWizardSpellSmall"]}
#make the markers face the center spell
execute as @e[type=marker,tag=blueWizardSpellSmall] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=blueWizardSpell,limit=1,sort=nearest]
#playsound
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~
#kill the original spell
kill @s