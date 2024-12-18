tellraw @a [{"text": "", "color": "gray"}, {"text": "[", "color": "dark_red"}, {"text": "Error", "color": "red"}, {"text": "]", "color": "dark_red"}, {"text": " NineLives ", "color": "light_purple", "bold": true}, {"text": "sanity check failed", "color": "red", "bold": true}, ", try the commands: ", {"text": "reload", "color": "dark_gray", "underlined": true, "clickEvent": {"action": "run_command", "value": "/reload"}}, " or ", {"text": "function ninelives:soft_reload", "color": "dark_gray", "underlined": true, "clickEvent": {"action": "run_command", "value": "/function ninelives:soft_reload"}}, {"text": "\nNineLives", "color": "dark_purple"}, " will remain shut down until then"]

# See (loaded) sanity_check_recovered
scoreboard players set #sanityCheckRecoveryState ninelives.globals 2

# If any player has seen the message then we don't need to execute this function again
execute if entity @a run scoreboard players set $errorSanityCheckFailed ninelives.globals 1
