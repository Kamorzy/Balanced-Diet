## As new players

# Mark as challenger by default
tag @s add bd.challenger

# Scoreboard inital values for players
scoreboard players set @s bd.unique_food 0
function zzz.balanced_diet:death_event/init

# Start initial health stats
attribute @s minecraft:generic.max_health base set 2
function zzz.balanced_diet:health/update_absorption