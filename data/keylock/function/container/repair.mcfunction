execute unless predicate keylock:items_in_container unless data entity @s data.keep_inventory run function keylock:container/unlock/drop

$scoreboard players set #repair_x keylock $(x)
$scoreboard players set #repair_z keylock $(z)

scoreboard players operation #repair_x keylock *= #10 keylock
scoreboard players operation #repair_z keylock *= #10 keylock

scoreboard players operation #repair_x keylock += #5 keylock
scoreboard players operation #repair_z keylock += #5 keylock

$data merge storage keylock:item_safe {repair:{x:$(x),y:$(y),z:$(z)}}

execute store result storage keylock:item_safe repair.pos_x double 0.1 run scoreboard players get #repair_x keylock
execute store result storage keylock:item_safe repair.pos_z double 0.1 run scoreboard players get #repair_z keylock

function keylock:container/run_repair with storage keylock:item_safe repair

data remove storage keylock:item_safe repair