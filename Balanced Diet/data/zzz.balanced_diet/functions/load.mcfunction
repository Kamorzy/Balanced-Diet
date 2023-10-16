## Create Scoreboards
#   Global
scoreboard objectives add bd.day_b4 dummy
scoreboard objectives add bd.day_now dummy
execute if score #Kamorzy bd.day_b4 matches 0.. \
    store result score #Kamorzy bd.day_b4 run time query day
#   Other scores
function zzz.balanced_diet:death_event/load
#   Food counts
scoreboard objectives add bd.unique_food dummy
#   Absorption calc
scoreboard objectives add bd.max_health dummy
scoreboard objectives add bd.current_health dummy
scoreboard objectives add bd.abs_need dummy
scoreboard objectives add bd.current_abs dummy
scoreboard objectives add bd.dmg_success dummy

## Scheduled functions
schedule function zzz.balanced_diet:tick10 10t