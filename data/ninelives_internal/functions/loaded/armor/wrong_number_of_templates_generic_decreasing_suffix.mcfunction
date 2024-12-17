scoreboard players operation #temp ninelives.globals = #currentArmorTemplateUnfitCount ninelives.globals
scoreboard players operation #temp ninelives.globals -= #1 ninelives.globals
tellraw @a [{"score": {"objective": "ninelives.globals", "name": "#temp"}, "color": "dark_green"}, " extra template(s) left to remove"]
