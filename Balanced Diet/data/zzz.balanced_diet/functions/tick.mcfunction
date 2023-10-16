# Detects and handles death events
function zzz.balanced_diet:death_event/tick

# Players are immune to damage for some time after respawn, retry failed damage until it goes through
execute as @a if score @s bd.dmg_success matches 0 store success score @s bd.dmg_success run damage @s 2