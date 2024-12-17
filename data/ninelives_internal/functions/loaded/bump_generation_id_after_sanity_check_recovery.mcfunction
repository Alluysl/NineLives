# Called when sanityCheckRecoveryState == -1
# -2 has the same effect except we don't enter this function
# See also the sanity_check_recovered sibling function which is called before this one, and call sites in (loaded) tick

# Bump generation ID to warn players in case sanity breach interfered with parameters
scoreboard players add #current ninelives.protection_flags_generation_id 1

scoreboard players set #sanityCheckRecoveryState ninelives.globals -2
