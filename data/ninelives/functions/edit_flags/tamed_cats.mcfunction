tellraw @s [{"text": "[", "color": "gray"}, {"text": "Nine Lives parameters", "color": "light_purple", "bold": true}, "]"]

tellraw @s {"text": "    for: tamed cats", "color": "gray"}
scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/report_current

tellraw @s [{"text": "Toggles: ", "color": "gray"}, {"text": "[Armor]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/armor"}}, " ", {"text": "[Res. I]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/resistance"}}, " ", {"text": "[N-i]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/high_resistance"}}, " ", {"text": "[F.R.]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/fire_resistance"}}, " ", {"text": "[W.B.]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/water_breathing"}}, " ", {"text": "[Reg. I]", "clickEvent": {"action": "run_command", "value": "/function ninelives_internal:loaded/protection_flags/toggles/cats/tamed/regeneration"}}]

tellraw @s [" ~~~~ ~~~~ ", {"text": "🐾", "color": "light_purple"}, " ~~~~ ~~~~ "]
