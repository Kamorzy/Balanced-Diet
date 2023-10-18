## As player who triggered advancement

scoreboard players add @s bd.unique_food 1
tellraw @s [{"text":"Unique foods eaten: "},{"score":{"name":"*", "objective":"bd.unique_food"}},{"text":"/40"}]
execute as @s[tag=bd.challenger] run function zzz.balanced_diet:health/update_hp