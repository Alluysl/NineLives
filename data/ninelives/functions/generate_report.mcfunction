tellraw @s [{"text": "[", "color": "gray"}, {"text": "Nine Lives parameters", "color": "light_purple", "bold": true}, "]"]

execute unless score #sane ninelives.globals matches 1 run tellraw @s {"text": "Pack data integrity not ensured, results may be false or fail to display", "color": "red"}

tellraw @s "Tamed cats"
scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/report_current
execute if score #doArmorProtection ninelives.globals matches 1 run function ninelives_internal:loaded/armor/report/tamed_cats
#                ^-- We utilize the fact that doArmorProtection was set by report_current

execute if score @s ninelives.protection_flags_generation_id matches -1 run tellraw @s [{"text": "You've unsubscribed from protection flag updates, ", "color": "gray"}, {"text": "turn them on", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger set 2147483647"}}, "?"]
execute unless score @s ninelives.protection_flags_generation_id matches -1 run tellraw @s [{"text": "You're subscribed to protection flag updates, ", "color": "gray"}, {"text": "turn them off", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger set 2147483647"}}, "?"]

execute if score @s ninelives.armor_template_global_generation_id matches -1 run tellraw @s [{"text": "You've unsubscribed from armor template updates, ", "color": "gray"}, {"text": "turn them on", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger set 2147483646"}}, "?"]
execute unless score @s ninelives.armor_template_global_generation_id matches -1 run tellraw @s [{"text": "You're subscribed to armor template updates, ", "color": "gray"}, {"text": "turn them off", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger set 2147483646"}}, "?"]

tellraw @s [" ~~~~ ~~~~ ", {"text": "🐾", "color": "light_purple"}, " ~~~~ ~~~~ "]

scoreboard players set @s ninelives.generate_report_trigger 0
