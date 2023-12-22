# summon falling container
function keylock:container/replace_broken with entity @s data.block

data merge block ~ ~ ~ {Lock:""}
data modify block ~ ~ ~ Items set from entity @s data.Items
data modify block ~ ~ ~ CustomName set from entity @s data.CustomName