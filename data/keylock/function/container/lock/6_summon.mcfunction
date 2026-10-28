# as new marker at @s
tag @s add keylock_container
tag @s add keylock_locked

data merge entity @s {data:{block:{facing:"",type:""}}}

data modify entity @s data.Pos.x set from entity @s Pos[0]
data modify entity @s data.Pos.y set from entity @s Pos[1]
data modify entity @s data.Pos.z set from entity @s Pos[2]