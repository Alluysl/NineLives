tellraw @s [{"text": "[", "color": "gray"}, {"text": "Nine Lives parameters", "color": "light_purple", "bold": true}, "]"]

tellraw @s "Tamed cats"
scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/report_current

execute if score @s ninelives.protection_flags_generation_id matches -1 run tellraw @s [{"text": "You've unsubscribed from update warnings, ", "color": "gray"}, {"text": "turn them on", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger set 2147483647"}}, "?"]
execute unless score @s ninelives.protection_flags_generation_id matches -1 run tellraw @s [{"text": "You're subscribed to update warnings, ", "color": "gray"}, {"text": "turn them off", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger set 2147483647"}}, "?"]

tellraw @s [" ~~~~ ~~~~ ", {"text": "🐾", "color": "light_purple"}, " ~~~~ ~~~~ "]

scoreboard players set @s ninelives.generate_report_trigger 0
