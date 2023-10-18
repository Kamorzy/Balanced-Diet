## As player calling function

# If already a challenger, do nothing
execute as @s[tag=bd.challenger] run return 1

# Add challenger tag to enable features
tag @s add bd.challenger

# Update challenge health pools
function zzz.balanced_diet:health/update_hp
function zzz.balanced_diet:health/update_absorption