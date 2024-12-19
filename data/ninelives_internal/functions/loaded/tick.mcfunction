# If functions couldn't run fully (e.g. another pack hit the function call limit), warn in chat (wait for players to be online if the server is starting)
execute unless score #ranFullyLastTick ninelives.globals matches 1 run scoreboard players add $warningNineLivesCouldNotRunFullyForTicks ninelives.globals 1
execute if score $warningNineLivesCouldNotRunFullyForTicks ninelives.globals matches 1.. run function ninelives_internal:loaded/did_not_run_fully
scoreboard players set #ranFullyLastTick ninelives.globals 0

execute as @a[scores={ninelives.check_if_did_not_run_fully_trigger=1..}] run function ninelives:check_if_did_not_run_fully
scoreboard players enable @a ninelives.check_if_did_not_run_fully_trigger

# We want to give the OK right before generating any ill-timed reports or warning of verified past flag changes...
execute if entity @a if score #sanityCheckRecoveryState ninelives.globals matches 1.. run function ninelives_internal:loaded/sanity_check_recovered

execute as @a unless score @s ninelives.protection_flags_generation_id matches -1 unless score @s ninelives.protection_flags_generation_id = #current ninelives.protection_flags_generation_id run function ninelives_internal:loaded/protection_flags/generation_id_mismatch_one
execute as @a unless score @s ninelives.armor_template_global_generation_id matches -1 unless score @s ninelives.armor_template_global_generation_id = #current ninelives.armor_template_global_generation_id run function ninelives_internal:loaded/armor/generation_id_mismatch_one

# ... but we don't want to warn twice if the sanity breach didn't destroy parameters and a change that happened in the meantime is detected below,
#     so we have to bump the generation IDs here (in a dedicated function to set the recovery state to a different value to not re-enter)
execute if score #sanityCheckRecoveryState ninelives.globals matches -1 run function ninelives_internal:loaded/refresh_trackings_after_sanity_check_recovery

execute if score #loopingTick ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/apply_flagged

# This needs to be after applying so that updated information (e.g. tracking and storage of armor) can be used
execute as @a[scores={ninelives.generate_report_trigger=1..2147483645}] run function ninelives:generate_report
execute as @a[scores={ninelives.generate_report_trigger=2147483647}] run function ninelives:toggle_my_protection_flag_change_warnings
execute as @a[scores={ninelives.generate_report_trigger=2147483646}] run function ninelives:toggle_my_armor_template_change_warnings
scoreboard players enable @a ninelives.generate_report_trigger

scoreboard players add #loopingTick ninelives.globals 1
execute unless score #loopingTick ninelives.globals matches 0..19 run scoreboard players set #loopingTick ninelives.globals 0

scoreboard players set #ranFullyLastTick ninelives.globals 1
