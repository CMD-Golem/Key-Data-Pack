# as keylock_container at @s
summon chest_minecart ~ ~ ~ {Silent:1b,Tags:["keylock_drophopperitems"]}
data modify entity @e[tag=keylock_drophopperitems,sort=nearest,limit=1] Items set from block ~ ~ ~ Items
kill @e[tag=keylock_drophopperitems,sort=nearest,limit=1]