# Avoid running directly, see check_armor_template_and_apply sibling function

execute unless score #prevTamedCatArmorTemplates ninelives.globals matches 1 run tellraw @a [{"text": "The armor template for tamed cats was restored ", "color": "gray"}, {"text": "✔", "color": "green"}]

tag @e[type=minecraft:armor_stand] remove ninelives_internal_current_armor_template
tag @e[type=minecraft:armor_stand, tag=ninelives_tamed_cat_armor_template] add ninelives_internal_current_armor_template
execute as @e[type=minecraft:cat] if data entity @s Owner run function ninelives_internal:loaded/armor/apply_one
