scoreboard players operation #temp ninelives.globals = @s ninelives.protection_flags_generation_id

execute if score #temp ninelives.globals matches -1 run scoreboard players operation @s ninelives.protection_flags_generation_id = #current ninelives.protection_flags_generation_id
execute if score #temp ninelives.globals matches -1 run tellraw @s [{"text": "", "color": "dark_gray"}, {"text": "Protection flag change warnings toggled ", "color": "gray"}, {"text": "on", "color": "green", "bold": true}, " (", {"text": "Generate a report", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger ninelives.generate_report_trigger"}}, "?)"]

# Inform user of delayed state of warning if toggled on while sanity check is failing
execute unless score #sane ninelives.globals matches 1 if score #temp ninelives.globals matches -1 run tellraw @s {"text": "Pack data integrity not ensured, you will be notified once it's restored", "color": "gray"}

execute unless score #temp ninelives.globals matches -1 run scoreboard players set @s ninelives.protection_flags_generation_id -1
execute unless score #temp ninelives.globals matches -1 run tellraw @s [{"text": "Protection flag change warnings toggled ", "color": "gray"}, {"text": "off", "color": "dark_gray", "bold": true}]

scoreboard players set @s ninelives.generate_report_trigger 0
