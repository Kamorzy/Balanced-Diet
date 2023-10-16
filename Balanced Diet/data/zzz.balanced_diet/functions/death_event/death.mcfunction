## As players who've died

# Reset death event to disallow repeated activations
scoreboard players set @s bd.death_event 0

# Get current health for respawn handler
execute store result score @s bd.max_health run attribute @s minecraft:generic.max_health get

# Don't bother queuing respawn handler if they already have full max health (like after eating all the foods)
execute if score @s bd.max_health matches 20.. run return 1

# Indicate respawn handler is needed
scoreboard players set @s bd.respawn_event 1