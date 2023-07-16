# summon falling container
function keylock:container/replace_broken

data merge entity @e[tag=keylock_falling,distance=..0.1,limit=1] {TileEntityData:{CustomName:"",Lock:""}}
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] TileEntityData.Items set from entity @s data.Items
data modify entity @e[tag=keylock_falling,distance=..0.1,limit=1] TileEntityData.CustomName set from entity @s data.CustomName