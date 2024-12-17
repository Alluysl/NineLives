scoreboard players operation #currentProtectionFlags ninelives.globals = $tamedCatProtectionFlags ninelives.params
function ninelives_internal:loaded/protection_flags/process_current

# doTotemProtection = 1 - doTotemProtection
scoreboard players set #temp ninelives.globals 1
scoreboard players operation #temp ninelives.globals -= #doTotemProtection ninelives.globals
scoreboard players operation #doTotemProtection ninelives.globals = #temp ninelives.globals

function ninelives_internal:loaded/protection_flags/rebuild_current
scoreboard players operation $tamedCatProtectionFlags ninelives.params = #currentProtectionFlags ninelives.globals

# Show admin UI again
function ninelives:edit_flags/tamed_cats
