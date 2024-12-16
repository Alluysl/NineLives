execute store result score #tamedCatArmorTemplates ninelives.globals if entity @e[type=armor_stand, tag=ninelives_tamed_cat_armor_template]
execute if score #tamedCatArmorTemplates ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/apply_armor
execute unless score #tamedCatArmorTemplates ninelives.globals matches 1 unless score #tamedCatArmorTemplates ninelives.globals = #prevTamedCatArmorTemplates ninelives.globals run function ninelives_internal:loaded/protect/cats/tamed/wrong_number_of_templates
scoreboard players operation #prevTamedCatArmorTemplates ninelives.globals = #tamedCatArmorTemplates ninelives.globals
