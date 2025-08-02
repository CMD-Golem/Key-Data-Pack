# replace container when broken with block
execute unless score #container_type keylock matches 1..2 run function keylock:container/replace_broken with entity @s data.block
# replace container when broken with display
execute if score #container_type keylock matches 1 run function keylock:container/summon_display
# drop items in container
function keylock:container/remove_drop with entity @s data.block