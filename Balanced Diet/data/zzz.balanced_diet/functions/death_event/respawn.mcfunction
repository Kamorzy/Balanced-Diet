## As players who've died

# current_health changes back to 20HP only after respawn, so use this to detect it
execute store result score @s bd.current_health run attribute @s minecraft:generic.max_health get

# Uses base health difference to determine when respawn occurs
execute if score @s bd.current_health <= @s bd.max_health run return 0

# Reset health state according to unique foods eaten + give back adsorption
function zzz.balanced_diet:health/update_hp
scoreboard players set @s bd.respawn_event 0
function zzz.balanced_diet:health/update_absorption
