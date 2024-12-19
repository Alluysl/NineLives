# Don't qualify for armor if already have some
execute unless data entity @s ArmorItems[0].Count unless data entity @s ArmorItems[1].Count unless data entity @s ArmorItems[2].Count unless data entity @s ArmorItems[3].Count run scoreboard players set @s ninelives.armor_added_by_us 1

execute if score @s ninelives.armor_added_by_us matches 1 run data modify entity @s ArmorItems set from storage ninelives:armor/current ArmorItems
