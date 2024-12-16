scoreboard objectives add ninelives.params dummy "NineLives params"
scoreboard objectives add ninelives.globals dummy
scoreboard objectives add ninelives.armor_added_by_us dummy
scoreboard objectives add ninelives.protection_flags_generation_id dummy
scoreboard objectives add ninelives.generate_report_trigger trigger
scoreboard objectives add ninelives.check_if_did_not_run_fully_trigger trigger

# Set to 1 such that wrong template counts (!= 1) cause a warning on load
scoreboard players set #prevTamedCatArmorTemplates ninelives.globals 1

scoreboard players set #1 ninelives.globals 1
scoreboard players set #2 ninelives.globals 2
scoreboard players set #ranFullyLastTick ninelives.globals 1
scoreboard players set #loopingTick ninelives.globals 0
scoreboard players set #loaded ninelives.globals 1
