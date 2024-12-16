execute as @e[type=minecraft:cat, scores={ninelives.armor_added_by_us=1}] run data modify entity @s ArmorItems set value [{}, {}, {}, {}]
scoreboard players reset @e[type=minecraft:cat] ninelives.armor_added_by_us
