# Avoid running directly, see check_armor_template_and_apply sibling function

execute unless score #prevTamedCatArmorTemplates ninelives.globals matches 1 run tellraw @a [{"text": "The armor template for tamed cats was restored ", "color": "gray"}, {"text": "✔", "color": "green"}]

execute store success score #temp ninelives.globals run data modify storage ninelives:armor/cats/tamed ArmorItems set from entity @e[type=minecraft:armor_stand, tag=ninelives_tamed_cat_armor_template, limit=1] ArmorItems

execute unless score #temp ninelives.globals matches 0 run scoreboard players add #current ninelives.armor_template_global_generation_id 1

data modify storage ninelives:armor/current ArmorItems set from storage ninelives:armor/cats/tamed ArmorItems
execute as @e[type=minecraft:cat] if data entity @s Owner run function ninelives_internal:loaded/armor/apply_one
