# as keylock_door at @s
# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:doors run setblock ~ ~ ~ air strict
execute if block ~ ~1 ~ #keylock:doors run setblock ~ ~ ~ air strict
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy
execute unless block ~ ~1 ~ #keylock:air run setblock ~ ~ ~ air destroy

$setblock ~ ~ ~ $(id)[$(facing)$(hinge)$(open),half=lower] strict
$setblock ~ ~1 ~ $(id)[$(facing)$(hinge)$(open),half=upper] strict

scoreboard players set #door_found keylock 1

execute as @e[type=item,distance=..1,nbt={Age:0s}] run kill @s