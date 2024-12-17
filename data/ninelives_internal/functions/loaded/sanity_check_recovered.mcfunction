# -1: notified already, function won't be called before next sanity check failure
#  0: no sanity check failed for the past two loads, function never called
#  1: sanity check successful right after last load, had failed before it
#  2: sanity check successful later after last load, has failed any other time
execute if score #sanityCheckRecoveryState ninelives.globals matches 1 run tellraw @a [{"text": "", "color": "gray"}, {"text": "NineLives", "color": "dark_purple"}, " sanity check passed after reload ", {"text": "✔", "color": "green"}, "\nExecution resumed"]
execute if score #sanityCheckRecoveryState ninelives.globals matches 2 run tellraw @a [{"text": "", "color": "gray"}, {"text": "NineLives", "color": "dark_purple"}, " sanity check passed ", {"text": "✔", "color": "green"}, " Great job 👍\n Execution resumed"]
scoreboard players set #sanityCheckRecoveryState ninelives.globals -1
scoreboard players reset $errorSanityCheckFailed ninelives.globals
