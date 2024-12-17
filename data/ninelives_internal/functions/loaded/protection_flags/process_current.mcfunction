# Callers:
# - (internal) loaded/protection_flags/report_current
# - (internal) loaded/protect/*
# This is basically a bitwise read, which must sync with its rebuilding counterpart

# if (currentProtectionFlags & 1)
scoreboard players operation #temp ninelives.globals = #currentProtectionFlags ninelives.globals
scoreboard players operation #doTotemProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doTotemProtection ninelives.globals %= #2 ninelives.globals

# if (currentProtectionFlags & 2)
scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
scoreboard players operation #doArmorProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doArmorProtection ninelives.globals %= #2 ninelives.globals

# if (currentProtectionFlags & 4)
scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
scoreboard players operation #doResistanceProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doResistanceProtection ninelives.globals %= #2 ninelives.globals

# if (currentProtectionFlags & 8)
scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
scoreboard players operation #doHighResistanceProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doHighResistanceProtection ninelives.globals %= #2 ninelives.globals

# if (currentProtectionFlags & 16)
scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
scoreboard players operation #doFireResistanceProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doFireResistanceProtection ninelives.globals %= #2 ninelives.globals

# if (currentProtectionFlags & 32)
scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
scoreboard players operation #doWaterBreathingProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doWaterBreathingProtection ninelives.globals %= #2 ninelives.globals

# if (currentProtectionFlags & 64)
scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
scoreboard players operation #doRegenerationProtection ninelives.globals = #temp ninelives.globals
scoreboard players operation #doRegenerationProtection ninelives.globals %= #2 ninelives.globals

scoreboard players operation #temp ninelives.globals /= #2 ninelives.globals
execute unless score #temp ninelives.globals matches 0 run scoreboard players set $warningTooManyBitsSetInProtectionFlags ninelives.params 1
