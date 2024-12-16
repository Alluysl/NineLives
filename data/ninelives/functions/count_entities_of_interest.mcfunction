scoreboard players set #temp ninelives.globals -1
execute store result score #temp ninelives.globals if entity @e[type=minecraft:cat]
scoreboard players set #temp_ ninelives.globals 0
execute as @e[type=minecraft:cat] if data entity @s Owner run scoreboard players add #temp_ ninelives.globals 1
tellraw @s [{"text": "Counted ", "color": "gray"}, {"score": {"objective": "ninelives.globals", "name": "#temp"}}, " cats, ", {"score": {"objective": "ninelives.globals", "name": "#temp_"}}, " of which are tamed"]
