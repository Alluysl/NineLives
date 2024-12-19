# Add scoreboard to work with in case it wasn't there already
scoreboard objectives add ninelives.globals dummy

# Sanity check
scoreboard players set #sane ninelives.globals 0
execute store result score #sane ninelives.globals if score #1 ninelives.globals matches 1 if score #2 ninelives.globals matches 2 if score #loopingTick ninelives.globals matches 0.. if score #sentinel ninelives.params matches 1 if score #sentinel ninelives.armor_added_by_us matches 1 if score #sentinel ninelives.protection_flags_generation_id matches 1 if score #sentinel ninelives.armor_template_global_generation_id matches 1 if data storage ninelives:armor/current ArmorItems
