#puts people who run /trigger gazebo in the gazebo lobby and resets /trigger
execute as @a[scores={gazebo=1..}] at @s run function under_pack:gazebo_functions/gazebo_enter
scoreboard players enable @a gazebo
execute as @a[scores={park=1..}] at @s run function under_pack:park_functions/park_enter
scoreboard players enable @a park
execute as @a[scores={ruin=1..}] at @s run function under_pack:ruin_functions/ruin_enter
scoreboard players enable @a ruin
execute as @a[scores={res=1..}] at @s run function under_pack:res_functions/res_enter
scoreboard players enable @a res
execute as @a[scores={city=1..}] at @s run function under_pack:city_functions/city_enter
scoreboard players enable @a city
execute as @a[scores={nylium=1..}] at @s run function under_pack:nylium_functions/nylium_enter
scoreboard players enable @a nylium
execute as @a[scores={lake=1..}] at @s run function under_pack:lake_functions/lake_enter
scoreboard players enable @a lake
execute as @a[scores={cavern=1..}] at @s run function under_pack:cavern_functions/cavern_enter
scoreboard players enable @a cavern

execute as @a[scores={Reset=1..}] at @s run function under_pack:general_functions/general_restart
scoreboard players enable @a Reset
execute as @a[scores={red=1..}] at @s run function under_pack:trigger_functions/red
scoreboard players enable @a red
execute as @a[scores={blue=1..}] at @s run function under_pack:trigger_functions/blue
scoreboard players enable @a blue
execute as @a[scores={leave=1..}] at @s run function under_pack:trigger_functions/leave2
scoreboard players enable @a leave
execute as @a[scores={menu=1..}] at @s run function under_pack:general_functions/general_menu
scoreboard players enable @a menu
execute as @a[scores={book=1..}] at @s run function under_pack:general_functions/general_getbook
scoreboard players enable @a book
execute as @a[scores={liberals=1..}] at @s run function under_pack:trigger_functions/liberals
scoreboard players enable @a liberals

#trigger commands for each of the classes
execute as @a[scores={alchemist=1..}] at @s run function under_pack:alchemist_functions/alchemist_trigger
scoreboard players enable @a alchemist
execute as @a[scores={archer=1..}] at @s run function under_pack:archer_functions/archer_trigger
scoreboard players enable @a archer
execute as @a[scores={engineer=1..}] at @s run function under_pack:engineer_functions/engineer_trigger
scoreboard players enable @a engineer
execute as @a[scores={paladin=1..}] at @s run function under_pack:knight_functions/knight_trigger
scoreboard players enable @a paladin
execute as @a[scores={lumberjack=1..}] at @s run function under_pack:lumberjack_functions/lumberjack_trigger
scoreboard players enable @a lumberjack
execute as @a[scores={ninja=1..}] at @s run function under_pack:ninja_functions/ninja_trigger
scoreboard players enable @a ninja
execute as @a[scores={rogue=1..}] at @s run function under_pack:rogue_functions/rogue_trigger
scoreboard players enable @a rogue
execute as @a[scores={scientist=1..}] at @s run function under_pack:scientist_functions/scientist_trigger
scoreboard players enable @a scientist
execute as @a[scores={wizard=1..}] at @s run function under_pack:wizard_functions/wizard_trigger
scoreboard players enable @a wizard
execute as @a[scores={mermaid=1..}] at @s run function under_pack:mermaid_functions/mermaid_trigger
scoreboard players enable @a mermaid
execute as @a[scores={elemental=1..}] at @s run function under_pack:elemental_functions/elemental_trigger
scoreboard players enable @a elemental
execute as @a[scores={dark_soul=1..}] at @s run function under_pack:dark_soul_functions/trigger
scoreboard players enable @a dark_soul
execute as @a[scores={gun_man=1..}] at @s run function under_pack:gun_man_functions/gun_trigger
scoreboard players enable @a gun_man
execute as @a[scores={cyborg=1..}] at @s run function under_pack:cyborg_functions/cyborg_trigger
scoreboard players enable @a cyborg
execute as @a[scores={microwave=1..}] at @s run function under_pack:microwave_functions/trigger
scoreboard players enable @a microwave
execute as @a[scores={bard_barian=1..}] at @s run function under_pack:bard_barian/trigger
scoreboard players enable @a bard_barian
execute as @a[scores={coldsteel=1..}] at @s run function under_pack:coldsteel_functions/trigger
scoreboard players enable @a coldsteel
execute as @a[scores={hemomancer=1..}] at @s run function under_pack:vamp_functions/trigger
scoreboard players enable @a hemomancer
execute as @a[scores={celestial=1..}] at @s run function under_pack:celestial_functions/trigger
scoreboard players enable @a celestial
execute as @a[scores={occultist=1..}] at @s run function under_pack:occultist/trigger
scoreboard players enable @a occultist