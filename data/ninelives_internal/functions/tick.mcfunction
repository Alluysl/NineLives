function ninelives_internal:sanity_check

# Run as normal if passed
execute if score #sane ninelives.globals matches 1 run function ninelives_internal:loaded/tick

# Warning if failed
execute unless score #sane ninelives.globals matches 1 unless score $errorSanityCheckFailed ninelives.globals matches 1 run function ninelives_internal:sanity_check_failed
