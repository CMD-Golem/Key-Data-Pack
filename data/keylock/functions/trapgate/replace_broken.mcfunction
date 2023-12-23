# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:trapgate run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy

$setblock ~ ~ ~ $(id)[$(facing)$(half)$(open)]