# Set empty so failure of copy can be detected to report empty template
data modify storage ninelives:armor/current ArmorItems set value [{}, {}, {}, {}]

execute store result score #temp ninelives.globals if data storage ninelives:armor/cats/tamed ArmorItems
execute unless score #temp ninelives.globals matches 1 run function ninelives_internal:loaded/armor/report_storage_issue

execute if score #temp ninelives.globals matches 1 run scoreboard players operation #currentArmorTemplateCount ninelives.globals = #tamedCatArmorTemplates ninelives.globals
execute if score #temp ninelives.globals matches 1 if score #currentArmorTemplateCount ninelives.globals matches 1 store result score #currentArmorTemplateIsNotEmpty ninelives.globals run data modify storage ninelives:armor/current ArmorItems set from storage ninelives:armor/cats/tamed ArmorItems
execute if score #temp ninelives.globals matches 1 run function ninelives_internal:loaded/armor/report_current
