# Count templates
execute store result score #tamedCatArmorTemplates ninelives.globals if entity @e[type=armor_stand, tag=ninelives_tamed_cat_armor_template]

# Only a single one, good to go
execute if score #tamedCatArmorTemplates ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/apply_armor

# Warn about wrong amount, but it only makes sense if players are online so skip it otherwise
execute unless score #tamedCatArmorTemplates ninelives.globals matches 1 unless score #tamedCatArmorTemplates ninelives.globals = #prevTamedCatArmorTemplates ninelives.globals if entity @a run function ninelives_internal:loaded/protect/cats/tamed/wrong_number_of_templates

# Wait for players to log in to update the previous amount so the warning triggers when they do (state of limbo in the meantime)
# If - somehow - it's changed forth then back to the same value while nobody is online, then no warning will be issued, but in this case that's okay
# This behavior also skips ticks where the template isn't loaded yet, i.e. if it's not in spawn chunks, which is being convenient for testing
execute if entity @a run scoreboard players operation #prevTamedCatArmorTemplates ninelives.globals = #tamedCatArmorTemplates ninelives.globals
