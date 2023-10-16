# Clear any absorption
effect clear @s minecraft:absorption

# Reset scoreboard values
scoreboard players reset @s bd.death_event
scoreboard players reset @s bd.respawn_event

scoreboard players reset @s bd.unique_food

scoreboard players reset @s bd.max_health
scoreboard players reset @s bd.current_health
scoreboard players reset @s bd.abs_need
scoreboard players reset @s bd.current_abs
scoreboard players reset @s bd.dmg_success

scoreboard players reset @s bd.day_b4
scoreboard players reset @s bd.day_now

# Revoke all dp advancements (triggers new player init again)
advancement revoke @s from zzz.balanced_diet:root