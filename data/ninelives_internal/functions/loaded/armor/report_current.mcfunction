execute if score #currentArmorTemplateCount ninelives.globals matches 0 run tellraw @s [{"text": "    🛡 ", "color": "dark_gray"}, {"text": "Missing armor template", "color": "yellow"}]

execute if score #currentArmorTemplateCount ninelives.globals matches 1 if score #currentArmorTemplateIsNotEmpty ninelives.globals matches 1 run function ninelives_internal:loaded/armor/report_current_valid_not_empty
execute if score #currentArmorTemplateCount ninelives.globals matches 1 unless score #currentArmorTemplateIsNotEmpty ninelives.globals matches 1 run tellraw @s ["    ", {"text": "🛡 ", "color": "gray"}, "Empty armor template"]

execute if score #currentArmorTemplateCount ninelives.globals matches 2.. run tellraw @s [{"text": "    ", "color": "gray"}, {"text": "🛡 ", "color": "dark_gray"}, {"text": "Too many armor templates", "color": "yellow"}, " (needed 1, got ", {"score": {"objective": "ninelives.globals", "name": "#currentArmorTemplateCount"}}, ")"]
