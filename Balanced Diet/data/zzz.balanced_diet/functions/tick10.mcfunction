# Reschedule this function in 10 ticks
schedule function zzz.balanced_diet:tick10 10t

# Each morning, refresh absorption hearts (MUST BE LAST)
execute store result score #Kamorzy bd.day_now run time query day
execute if score #Kamorzy bd.day_now = #Kamorzy bd.day_b4 run return 1
scoreboard players operation #Kamorzy bd.day_b4 = #Kamorzy bd.day_now
execute as @a[tag=bd.challenger] run function zzz.balanced_diet:health/update_absorption