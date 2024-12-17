# Called from apply_flagged sibling function, avoids a needless assignment since need to check for equality to bump the generation anyway
# Slower in the true case but the false case is overwhelmingly more common
scoreboard players add #current ninelives.protection_flags_generation_id 1
scoreboard players operation #lastProtectionFlags ninelives.globals = #lastTamedCatProtectionFlags ninelives.globals
scoreboard players operation #lastTamedCatProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params

# If now/still have armor, allow for another warning
execute if score #doArmorProtection ninelives.globals matches 1 run function ninelives_internal:loaded/protect/cats/tamed/reset_armor_tracking
