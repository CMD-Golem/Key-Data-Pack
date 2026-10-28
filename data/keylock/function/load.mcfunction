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

# needed in container/repair
scoreboard players set #5 keylock 5
scoreboard players set #10 keylock 10

execute unless score #default keylock matches 1 run function keylock:settings/default

# slow running functions
execute if predicate keylock:auto_open run function keylock:auto_open/1_run

# #execute_code keylock (at least for doors and trapgates)
# 0: default value
# 1: maximum count of locked blocks of player reached
# 2: maximum count of locked blocks in world reached
# 10: block isnt locked
# 11: block is autounlocked
# old: 20: identity check passed
# old: 21: identity check passed (block wasnt locked)

# 19: identity check passed (block wasnt locked)
# 20: identity check passed, password matched
# 21: identity check passed, id matched
# 22: identity check passed, admin key used

# Tags:
# - keylock_locked: All locked blocks
# - keylock_unlocked: Unlocked blocks with password or admin key
# - keylock_autoopened: Mark autoopened blocks, is killed when door gets closed again
# - keylock_autounlocked: Locked blocks which have been autoopened
# - Doors/Trapdoors/Fence Gates:
#   - keylock_door: Locked door
#   - keylock_autodoor: Mark autoopened doors, is killed when door gets closed again
#   - keylock_trapgate: Locked trapgate
#   - keylock_autogate: Mark autoopened trapgates, is killed when door gets closed again
#   - keylock_closed: Locked door/trapdoor which was not auto opened because it is closed
# - chests
#   - keylock_container: Locked containers
#   - keylock_drophopperitems: Chest minecart to get items inside locked chest
#   - keylock_isdisplay: Container uses visual display
#   - keylock_needsdisplay: Only inside lock
#   - keylock_display: Visual display container
#   - keylock_padlock: Visual padlock, unused
