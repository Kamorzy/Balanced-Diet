## As player

## Checks if necessary to alter absorption at all
# Get current stats
execute store result score @s bd.max_health run attribute @s minecraft:generic.max_health get

# Calculate required absorption
scoreboard players set @s bd.abs_need 20
scoreboard players operation @s bd.abs_need -= @s bd.max_health

# Return if current absorption is already >= what they need
execute store result score @s bd.current_abs run data get entity @s AbsorptionAmount
execute if score @s bd.current_abs >= @s bd.abs_need run return 1

## Give absorption
# Grant absorption >= what is needed
execute if score @s bd.unique_food matches 28..39 run effect give @s minecraft:absorption infinite 0 true
execute if score @s bd.unique_food matches 20..27 run effect give @s minecraft:absorption infinite 1 true
execute if score @s bd.unique_food matches 12..19 run effect give @s minecraft:absorption infinite 2 true
execute if score @s bd.unique_food matches 4..11 run effect give @s minecraft:absorption infinite 3 true
execute if score @s bd.unique_food matches 0..3 run effect give @s minecraft:absorption infinite 4 true

# Notify player that absorption updated
tellraw @s [{"text":"Absorption hearts refreshed"}]

# Apply damage to compensate for extra absorption (since it gives min 2 hearts each level)
execute if predicate zzz.balanced_diet:dmg2 store success score @s bd.dmg_success run damage @s 2