## As player

# Set new max health
# include return functions to stop executing as soon as a match is found
execute if score @s bd.unique_food matches 40 run attribute @s minecraft:generic.max_health base set 20
execute if score @s bd.unique_food matches 40 run return 20
execute if score @s bd.unique_food matches 34..39 run attribute @s minecraft:generic.max_health base set 18
execute if score @s bd.unique_food matches 34..39 run return 18
execute if score @s bd.unique_food matches 28..33 run attribute @s minecraft:generic.max_health base set 16
execute if score @s bd.unique_food matches 28..33 run return 16
execute if score @s bd.unique_food matches 24..27 run attribute @s minecraft:generic.max_health base set 14
execute if score @s bd.unique_food matches 24..27 run return 14
execute if score @s bd.unique_food matches 20..23 run attribute @s minecraft:generic.max_health base set 12
execute if score @s bd.unique_food matches 20..23 run return 12
execute if score @s bd.unique_food matches 16..19 run attribute @s minecraft:generic.max_health base set 10
execute if score @s bd.unique_food matches 16..19 run return 10
execute if score @s bd.unique_food matches 12..15 run attribute @s minecraft:generic.max_health base set 8
execute if score @s bd.unique_food matches 12..15 run return 8
execute if score @s bd.unique_food matches 8..11 run attribute @s minecraft:generic.max_health base set 6
execute if score @s bd.unique_food matches 8..11 run return 6
execute if score @s bd.unique_food matches 4..7 run attribute @s minecraft:generic.max_health base set 4
execute if score @s bd.unique_food matches 4..7 run return 4
execute if score @s bd.unique_food matches ..3 run attribute @s minecraft:generic.max_health base set 2
execute if score @s bd.unique_food matches ..3 run return 2