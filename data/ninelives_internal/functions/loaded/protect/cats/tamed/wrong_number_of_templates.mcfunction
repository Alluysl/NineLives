# Only called if new (but still incorrect) count and players are online
scoreboard players operation #currentArmorTemplateUnfitCount ninelives.globals = #tamedCatArmorTemplates ninelives.globals
function ninelives_internal:loaded/armor/wrong_number_of_templates_generic
tellraw @a [{"text": "  → for: tamed cats\n    (tag: ", "color": "gray"}, {"text": "ninelives_tamed_cat_armor_template", "color": "dark_gray"}, ")"]
execute if score #tamedCatArmorTemplates ninelives.globals matches 2.. if score #tamedCatArmorTemplates ninelives.globals < #prevTamedCatArmorTemplates ninelives.globals run function ninelives_internal:loaded/armor/wrong_number_of_templates_generic_decreasing_suffix
