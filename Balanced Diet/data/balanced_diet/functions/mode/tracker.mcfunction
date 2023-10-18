## As player calling function
## Comments
# For tracking the stats without any gameplay changes.
# Works on a per player basis.
# The tag is used to intercept calls to the death event (in :death/tick), update_hp (in :health/inc_food_count), and update_absorption (in :tick10).
# All unique food counts and achievements will still activate, enabling modes to be switched at any time for any player without consequences to either mode or affecting other players.

## Code
# If already not a challenger, do nothing
execute as @s[tag=!bd.challenger] run return 1

# Remove challenger tag to reduce down to only tracking features
tag @s remove bd.challenger

# reset stats to vanilla
function zzz.balanced_diet:health/reset_to_vanilla_health


