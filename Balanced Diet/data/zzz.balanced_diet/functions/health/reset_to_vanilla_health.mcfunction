## As a player

effect clear @s minecraft:absorption
attribute @s minecraft:generic.max_health base set 20
# To restore hearts lost to absorption. Damage is needed to bypass bug with gui not updating.
effect give @s minecraft:instant_health 1 3 true
damage @s 1
effect give @s minecraft:instant_health 1 0 true