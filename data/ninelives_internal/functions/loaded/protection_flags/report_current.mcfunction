function ninelives_internal:loaded/protection_flags/process_current

execute if score #doArmorProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ✔ ", "color": "green"}, {"text": "Armor", "color": "white"}]
execute unless score #doArmorProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ❌ ", "color": "red"}, {"text": "Armor", "color": "white"}]

execute if score #doResistanceProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ✔ ", "color": "green"}, {"text": "Resistance I", "color": "white"}]
execute unless score #doResistanceProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ❌ ", "color": "red"}, {"text": "Resistance I", "color": "white"}]

execute if score #doHighResistanceProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ✔ ", "color": "green"}, {"text": "Nigh-invincibility", "color": "white"}]
execute unless score #doHighResistanceProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ❌ ", "color": "red"}, {"text": "Nigh-invincibility", "color": "white"}]

execute if score #doFireResistanceProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ✔ ", "color": "green"}, {"text": "Fire Resistance", "color": "white"}]
execute unless score #doFireResistanceProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ❌ ", "color": "red"}, {"text": "Fire Resistance", "color": "white"}]

execute if score #doWaterBreathingProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ✔ ", "color": "green"}, {"text": "Water Breathing", "color": "white"}]
execute unless score #doWaterBreathingProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ❌ ", "color": "red"}, {"text": "Water Breathing", "color": "white"}]

execute if score #doRegenerationProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ✔ ", "color": "green"}, {"text": "Regeneration I", "color": "white"}]
execute unless score #doRegenerationProtection ninelives.globals matches 1 run tellraw @s [{"text": "    ❌ ", "color": "red"}, {"text": "Regeneration I", "color": "white"}]
