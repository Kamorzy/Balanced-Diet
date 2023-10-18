## Notes
# Would have liked to just run the disable command here, 
# but everything breaks if anyone renames the pack.
# To avoid confusion + bugs, just clearing variables and
# making it inactive, then notifying player to disable.


## Code
# If challenger tag exists on any player, cancel it (deactivates features)
execute as @a run tag @s[tag=bd.challenger] remove bd.challenger

# Remove scoreboards (clear variables)
function zzz.balanced_diet:death_event/uninstall
scoreboard objectives remove bd.day_b4
scoreboard objectives remove bd.day_now
scoreboard objectives remove bd.unique_food
scoreboard objectives remove bd.max_health
scoreboard objectives remove bd.current_health
scoreboard objectives remove bd.abs_need
scoreboard objectives remove bd.current_abs
scoreboard objectives remove bd.dmg_success

# Reset health pools back to vanilla
execute as @a run function zzz.balanced_diet:health/reset_to_vanilla_health

# Disable datapack (player needs to do it)
tellraw @s "Balanced diet uninstall prep complete."
tellraw @s [{"text":"Please ","color":"aqua"},{"text":"complete uninstall","color":"red","underlined":"true"},{"text":",\ndisable Balanced Diet with command:","color":"aqua"}]
tellraw @s {"text":"/datapack disable \"file/[datapack_name].zip\"","color":"#99ff99"}