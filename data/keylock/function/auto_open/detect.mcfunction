# as @a at door
# autounlock block if not locked
execute unless entity @e[tag=keylock_entity,distance=..0.1] run scoreboard players set #execute_code keylock 21

# check player data for locked block
execute if score @s keylock = @e[tag=keylock_entity,distance=..0.1,limit=1] keylock run scoreboard players set #execute_code keylock 20
execute unless score #execute_code keylock matches 20.. if items entity @s weapon.mainhand *[minecraft:custom_data~{keylock_admin:1b}] run scoreboard players set #execute_code keylock 20
execute if score #key_name keylock matches 1 unless score #execute_code keylock matches 20.. run function keylock:password_check

# open blocks
say open different blocks