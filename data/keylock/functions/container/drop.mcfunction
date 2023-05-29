summon chest_minecart ~ ~ ~ {Silent:1b,Tags:["keylock_drop"]}
data modify entity @e[tag=keylock_drop,sort=nearest,limit=1] Items set from block ~ ~ ~ Items
kill @e[tag=keylock_drop,sort=nearest,limit=1]