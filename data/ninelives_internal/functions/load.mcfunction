scoreboard objectives add ninelives.params dummy "NineLives params"
scoreboard objectives add ninelives.globals dummy
scoreboard objectives add ninelives.armor_added_by_us dummy
scoreboard objectives add ninelives.protection_flags_generation_id dummy
scoreboard objectives add ninelives.armor_template_global_generation_id dummy
scoreboard objectives add ninelives.generate_report_trigger trigger
scoreboard objectives add ninelives.check_if_did_not_run_fully_trigger trigger

execute store result score #sanityCheckRecoveryState ninelives.globals if score $errorSanityCheckFailed ninelives.globals matches 1

scoreboard players set #sentinel ninelives.params 1
scoreboard players set #sentinel ninelives.armor_added_by_us 1
scoreboard players set #sentinel ninelives.protection_flags_generation_id 1
scoreboard players set #sentinel ninelives.armor_template_global_generation_id 1

scoreboard players set #1 ninelives.globals 1
scoreboard players set #2 ninelives.globals 2
scoreboard players set #ranFullyLastTick ninelives.globals 1
scoreboard players set #loopingTick ninelives.globals 0

data modify storage ninelives:armor/current ArmorItems set value [{}, {}, {}, {}]
function ninelives_internal:loaded/armor/reset_tracking_for_all_entity_types
