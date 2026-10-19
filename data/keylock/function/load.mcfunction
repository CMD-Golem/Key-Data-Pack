scoreboard objectives add keylock dummy
scoreboard objectives add keylock_craft dummy
scoreboard objectives add keylock_count dummy
scoreboard objectives add keylock_settings dummy
scoreboard objectives add keylock_use minecraft.used:minecraft.warped_fungus_on_a_stick

#keylock: player: uuid | entity: owner uuid
#keylock_craft: player: crafting counter, damage, repair | entity: rotation
#keylock_use: player: use count of key | entity: type
#keylock_count: player: count of locked chests | entity: last checked autounlock uuid
#keylock_settings: player: change settings

scoreboard players set #5 keylock 5
scoreboard players set #10 keylock 10

execute unless score #default keylock matches 1 run function keylock:settings/default

# #execute_code keylock (at least for doors and trapgates)
# 0: default value
# 1: maximum count of locked blocks of player reached
# 2: maximum count of locked blocks in world reached
# 10: block isnt locked
# 20: identity check passed
# 21: identity check passed (block wasnt locked)

# Tags:
# - keylock_entity: Used on all entities of the pack, not keylock_autodoor
# - Doors/Trapdoors/Fence Gates:
#   - keylock_door: Locked door
#   - keylock_autodoor: Mark autoopened doors, is killed when door gets closed again
#   - keylock_trapgate: Locked trapgate
#   - keylock_autogate: Mark autoopened trapgates, is killed when door gets closed again
#   - keylock_autounlocked: Locked door/trapdoor which has been autoopened
#   - keylock_closed: Locked door/trapdoor which was not auto opened because it is closed