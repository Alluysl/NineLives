# Callers:
# - (internal) loaded/protection_flags/toggles/*
# This is basically a bitwise write, which must sync with its processing counterpart

scoreboard players set #currentProtectionFlags ninelives.globals 0

execute if score #doTotemProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 1
execute if score #doArmorProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 2
execute if score #doResistanceProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 4
execute if score #doHighResistanceProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 8
execute if score #doFireResistanceProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 16
execute if score #doWaterBreathingProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 32
execute if score #doRegenerationProtection ninelives.globals matches 1 run scoreboard players add #currentProtectionFlags ninelives.globals 64
