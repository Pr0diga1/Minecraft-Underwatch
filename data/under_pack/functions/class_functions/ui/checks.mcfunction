# Checks whether the chest has all the items in italic
# if not it will run the next step
execute as @e[tag=class_ui] unless entity @s[predicate=under_pack:class_ui_blue] as @a[predicate=under_pack:players_changing_classes] run function under_pack:class_functions/class_check
