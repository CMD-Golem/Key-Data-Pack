#upload pos in storage and in entity
data modify entity @s data.Pos.x set from entity @s Pos[0]
data modify entity @s data.Pos.y set from entity @s Pos[1]
data modify entity @s data.Pos.z set from entity @s Pos[2]