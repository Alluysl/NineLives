scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/process_current

execute if score #doTotemProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run function ninelives_internal:loaded/totem/tick_one

execute if score #doArmorProtection ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/check_armor_template_and_apply
execute unless score #doArmorProtection ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/remove_armor_where_from_us

# Effects are refreshed for 30s to account for possible downtimes during reloads
execute if score #doResistanceProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:resistance 30 0 true
execute if score #doHighResistanceProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:resistance 30 255 true
execute if score #doFireResistanceProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:fire_resistance 30 0 true
execute if score #doWaterBreathingProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:water_breathing 30 0 true
execute if score #doRegenerationProtection ninelives.globals matches 1 as @e[type=minecraft:cat] if data entity @s Owner run effect give @s minecraft:regeneration 30 0 true

execute unless score #lastTamedCatProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params run scoreboard players add #current ninelives.protection_flags_generation_id 1
scoreboard players operation #lastTamedCatProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
