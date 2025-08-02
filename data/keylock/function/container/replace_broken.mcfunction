# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:containers run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy

$setblock ~ ~ ~ $(id)[$(facing)$(type)]{lock:{components:{"minecraft:custom_data":{unlockable:0b}}}}
execute if data entity @s data.keep_inventory run loot insert ~ ~ ~ loot keylock:keep_inventory