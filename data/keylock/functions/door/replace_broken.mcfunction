# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:doors run setblock ~ ~ ~ air
execute if block ~ ~1 ~ #keylock:doors run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy
execute unless block ~ ~1 ~ #keylock:air run setblock ~ ~ ~ air destroy


$setblock ~ ~ ~ $(id)[$(facing)$(hinge)$(open),half=lower]
$setblock ~ ~1 ~ $(id)[$(facing)$(hinge)$(open),half=upper]


# kill dropped door when door broken
# kill @e[type=item,limit=1,distance=..0.5,nbt={Age:0s}]
scoreboard players set #door_found keylock 1