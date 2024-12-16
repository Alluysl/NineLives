scoreboard objectives add ninelives.params dummy "NineLives params"
scoreboard objectives add ninelives.globals dummy
scoreboard objectives add ninelives.protection_flags_generation_id dummy
scoreboard objectives add ninelives.generate_report_trigger trigger
scoreboard objectives add ninelives.check_if_did_not_run_fully_trigger trigger
scoreboard players set #2 ninelives.globals 2
scoreboard players set #ranFullyLastTick ninelives.globals 1
scoreboard players set #loopingTick ninelives.globals 0
scoreboard players set #loaded ninelives.globals 1
