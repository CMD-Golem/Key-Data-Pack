#lock chest
execute unless entity @e[tag=keylock_cloud,distance=..0.1] unless entity @e[tag=keylock_unlocked,distance=..0.1] if score @s keylock_count < #max keylock run function keylock:container/fulllock
#unlock chest
execute unless entity @e[tag=keylock_new,distance=..0.1] if score @s keylock = @e[tag=keylock_cloud,distance=..0.1,limit=1] keylock run function keylock:container/fullunlock
#unlock with admin key
execute unless entity @e[tag=keylock_new,distance=..0.1] if entity @s[nbt={SelectedItem:{tag:{keylock_admin:1b}}}] unless score @s keylock = @e[tag=keylock_cloud,distance=..0.1,limit=1] keylock run function keylock:container/fullunlock


tag @e[tag=keylock_new] remove keylock_new