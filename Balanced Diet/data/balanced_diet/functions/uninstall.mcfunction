# Remove scoreboards
function zzz.balanced_diet:death_event/uninstall
scoreboard objectives remove bd.day_b4
scoreboard objectives remove bd.day_now
scoreboard objectives remove bd.unique_food
scoreboard objectives remove bd.max_health
scoreboard objectives remove bd.current_health
scoreboard objectives remove bd.abs_need
scoreboard objectives remove bd.current_abs
scoreboard objectives remove bd.dmg_success

# Revoke advancements
execute as @a run advancement revoke @s from zzz.balanced_diet:root

# Restore health
execute as @a run function zzz.balanced_diet:health/reset_to_vanilla_health

# Remove trackers
execute as @a run tag @s[tag=bd.tracker_mode] remove bd.tracker_mode

# Disable datapack
datapack disable "file/Balanced Diet.zip"