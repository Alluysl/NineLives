tellraw @s [{"text": "[", "color": "gray"}, {"text": "Nine Lives parameters", "color": "light_purple", "bold": true}, "]"]

tellraw @s {"text": "    for: tamed cats", "color": "gray"}
scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params

execute unless score #sane ninelives.globals matches 1 run tellraw @s [{"text": "", "color": "gray"}, {"text": "Pack data integrity not ensured, results may be false or fail to display, and toggles may break parameters: use at your own risk!", "color": "red"}, {"text": "\nIf you know what you are doing", "italic": true}, ", you may still be able to edit the ", {"text": "$tamedCatProtectionFlags", "color": "dark_gray"}, " in ", {"text": "ninelives.params", "color": "dark_gray"}, " (currently set to ", {"text": "[", "color": "dark_gray"}, {"score":{"objective": "ninelives.params", "name": "$tamedCatProtectionFlags"}, "color": "dark_gray"}, {"text": "]", "color": "dark_gray"}, ") directly"]

function ninelives_internal:loaded/protection_flags/report_current

tellraw @s [{"text": "Toggles: ", "color": "gray"}, {"text": "[Armor]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/armor"}}, " ", {"text": "[Res. I]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/resistance"}}, " ", {"text": "[N-i]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/high_resistance"}}, " ", {"text": "[F.R.]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/fire_resistance"}}, " ", {"text": "[W.B.]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/water_breathing"}}, " ", {"text": "[Reg. I]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/regeneration"}}]

tellraw @s [" ~~~~ ~~~~ ", {"text": "🐾", "color": "light_purple"}, " ~~~~ ~~~~ "]
