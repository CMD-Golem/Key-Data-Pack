# remove blocks if there was one at same spot as display
execute if block ~ ~ ~ #keylock:containers run setblock ~ ~ ~ air
execute unless block ~ ~ ~ #keylock:air run setblock ~ ~ ~ air destroy

tag @s remove keylock_isdisplay
execute if score #execute_code keylock matches 20 run tag @s add keylock_must_kill

# summon falling container
function keylock:container/replace_broken

data merge entity @e[tag=keylock_falling,distance=..0.1,limit=1] {TileEntityData:{CustomName:"",Lock:""}}
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] TileEntityData.Items set from entity @s data.Items
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] TileEntityData.CustomName set from entity @s data.CustomName