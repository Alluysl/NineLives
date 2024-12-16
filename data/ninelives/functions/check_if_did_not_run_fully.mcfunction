execute if score $warningNineLivesCouldNotRunFullyForTicks ninelives.globals matches 1..2147483647 run tellraw @s [{"text": "NineLives has failed to run fully ", "color": "gray"}, {"score": {"objective": "ninelives.globals", "name": "$warningNineLivesCouldNotRunFullyForTicks"}}, " time(s) as of now"]
execute unless score $warningNineLivesCouldNotRunFullyForTicks ninelives.globals matches 1..2147483647 run tellraw @s [{"text": "NineLives doesn't seem to have failed to run fully yet", "color": "gray"}]
scoreboard players set @s ninelives.check_if_did_not_run_fully_trigger 0
