#set the duration
scoreboard players set @s engineerTurretDuration 150
#reset turreteye so the marker doesnt get exploded
scoreboard players set @s engineerTurretEye 0
#reset the ability cooldown
scoreboard players set @s ability7 0

#make the turret
execute as @e[type=marker,tag=redEngineerTurret] at @s positioned ~-.25 ~ ~-.25 run tp @s ~ ~ ~

execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~ ~ ~.5 {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"north",half:"bottom",shape:"straight"}}}
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~ ~ ~-.5 {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"south",half:"bottom",shape:"straight"}}}
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~-.5 ~ ~ {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"east",half:"bottom",shape:"straight"}}}
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~.5 ~ ~ {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"west",half:"bottom",shape:"straight"}}}

execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~ ~.49 ~ {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_cut_copper"}}

execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~-.5 ~ ~-.5 {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"south",half:"bottom",shape:"outer_left"}}}
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~.5 ~ ~-.5 {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"west",half:"bottom",shape:"outer_left"}}}
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~-.5 ~ ~.5 {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"east",half:"bottom",shape:"outer_left"}}}
execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~.5 ~ ~.5 {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"north",half:"bottom",shape:"outer_left"}}}

execute as @s[team=uRed] at @e[type=marker,tag=redEngineerTurret] run summon block_display ~ ~.98 ~ {Tags:["redEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:lightning_rod"}}

execute as @e[type=marker,tag=redEngineerTurret] at @s positioned ~.25 ~1.5 ~.25 run tp @s ~ ~ ~


execute as @e[type=marker,tag=blueEngineerTurret] at @s positioned ~-.25 ~ ~-.25 run tp @s ~ ~ ~

execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~ ~ ~.5 {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"north",half:"bottom",shape:"straight"}}}
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~ ~ ~-.5 {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"south",half:"bottom",shape:"straight"}}}
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~-.5 ~ ~ {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"east",half:"bottom",shape:"straight"}}}
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~.5 ~ ~ {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"west",half:"bottom",shape:"straight"}}}

execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~ ~.49 ~ {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_cut_copper"}}

execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~-.5 ~ ~-.5 {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"south",half:"bottom",shape:"outer_left"}}}
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~.5 ~ ~-.5 {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"west",half:"bottom",shape:"outer_left"}}}
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~-.5 ~ ~.5 {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"east",half:"bottom",shape:"outer_left"}}}
execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~.5 ~ ~.5 {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:waxed_exposed_cut_copper_stairs",Properties:{facing:"north",half:"bottom",shape:"outer_left"}}}

execute as @s[team=uBlue] at @e[type=marker,tag=blueEngineerTurret] run summon block_display ~ ~.98 ~ {Tags:["blueEngineerTurret"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},block_state:{Name:"minecraft:lightning_rod"}}

execute as @e[type=marker,tag=blueEngineerTurret] at @s positioned ~.25 ~1.5 ~.25 run tp @s ~ ~ ~