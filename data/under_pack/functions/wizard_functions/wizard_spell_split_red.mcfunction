#summon the markers
summon marker ^.05 ^.05 ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^.05 ^.05 ^-.05 {Tags:["redWizardSpellSmall"]}
summon marker ^-.05 ^.05 ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^-.05 ^.05 ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^.05 ^-.05 ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^.05 ^-.05 ^-.05 {Tags:["redWizardSpellSmall"]}
summon marker ^-.05 ^-.05 ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^-.05 ^-.05 ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^ ^ ^.05 {Tags:["redWizardSpellSmall"]}
summon marker ^ ^ ^-.05 {Tags:["redWizardSpellSmall"]}
summon marker ^-.05 ^ ^ {Tags:["redWizardSpellSmall"]}
summon marker ^.05 ^ ^ {Tags:["redWizardSpellSmall"]}
#make the markers face the center spell
execute as @e[type=marker,tag=redWizardSpellSmall] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=redWizardSpell,limit=1,sort=nearest]
#playsound
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~
#kill the original spell
kill @s