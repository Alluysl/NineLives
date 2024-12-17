scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/process_current

# doFireResistanceProtection = 1 - doFireResistanceProtection
scoreboard players set #temp ninelives.globals 1
scoreboard players operation #temp ninelives.globals -= #doFireResistanceProtection ninelives.globals
scoreboard players operation #doFireResistanceProtection ninelives.globals = #temp ninelives.globals

function ninelives_internal:loaded/protection_flags/rebuild_current
scoreboard players operation $tamedCatProtectionFlags ninelives.params = #currentProtectionFlags ninelives.globals

# Show admin UI again
function ninelives:edit_flags/tamed_cats
