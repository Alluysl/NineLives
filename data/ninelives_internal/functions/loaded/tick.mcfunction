# If functions couldn't run fully (e.g. another pack hit the function call limit), warn in chat
execute unless score #ranFullyLastTick ninelives.globals matches 1 run function ninelives_internal:loaded/did_not_run_fully
scoreboard players set #ranFullyLastTick ninelives.globals 0

execute as @a[scores={ninelives.check_if_did_not_run_fully_trigger=1..}] run function ninelives:check_if_did_not_run_fully
scoreboard players enable @a ninelives.check_if_did_not_run_fully_trigger

execute as @a[scores={ninelives.generate_report_trigger=1..2147483646}] run function ninelives:generate_report
execute as @a[scores={ninelives.generate_report_trigger=2147483647}] run function ninelives:toggle_my_protection_flag_change_warnings
scoreboard players enable @a ninelives.generate_report_trigger

execute as @a unless score @s ninelives.protection_flags_generation_id matches -1 unless score @s ninelives.protection_flags_generation_id = #current ninelives.protection_flags_generation_id run function ninelives_internal:loaded/protection_flags_generation_ids_do_not_match

execute if score #loopingTick ninelives.globals matches 1 run function ninelives_internal:loaded/protect/tamed_cats

scoreboard players add #loopingTick ninelives.globals 1
execute unless score #loopingTick ninelives.globals matches 0..19 run scoreboard players set #loopingTick ninelives.globals 0

scoreboard players set #ranFullyLastTick ninelives.globals 1
