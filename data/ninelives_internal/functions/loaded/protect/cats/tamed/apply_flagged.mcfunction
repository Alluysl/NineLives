scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/process_current

# Needs to execute before applying armor so that may warn as armor added but after flag processing so that can benefit from it
execute unless score #lastTamedCatProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params run function ninelives_internal:loaded/protect/cats/tamed/flags_changed

execute if score #doArmorProtection ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/check_armor_template_and_apply
execute unless score #doArmorProtection ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/remove_armor_where_from_us

# Effects are refreshed for 30s to account for possible downtimes during reloads
execute if score #doResistanceProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:resistance 30 0 true
execute if score #doHighResistanceProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:resistance 30 255 true
execute if score #doFireResistanceProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:fire_resistance 30 0 true
execute if score #doWaterBreathingProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:water_breathing 30 0 true
execute if score #doRegenerationProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:regeneration 30 0 true
