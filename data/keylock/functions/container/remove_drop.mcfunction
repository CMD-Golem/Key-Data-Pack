$execute as @e[type=item,limit=1,distance=..1,nbt={Item:{Count:1b,id:"$(id)"},Age:0s}] run kill @s
$execute as @e[type=item,limit=1,distance=..1,nbt={Item:{Count:1b,id:"$(id)"},Age:1s}] run kill @s
