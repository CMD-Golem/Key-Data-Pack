# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:trapgate run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy

$setblock ~ ~ ~ $(id)[$(facing)$(half)$(open)]

execute as @e[type=item,distance=..1,nbt={Age:0s}] run kill @s