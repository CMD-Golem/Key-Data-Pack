# as used key/player walking away at block, was setup before
execute unless entity @e[tag=keylock_container,distance=..0.1] summon minecraft:marker run function keylock:container/lock/6_summon

# store locking information when unlocked with right id and not unlocked
execute unless entity @e[tag=keylock_unlocked,distance=..0.1] run function keylock:container/lock/7_player

# store other data
execute as @e[tag=keylock_container,distance=..0.1] run function keylock:container/lock/8_store_data with entity @s data.Pos