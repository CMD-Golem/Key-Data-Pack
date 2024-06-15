#max_player: maximum count of locked containers per player
#max_world: maximum count of locked containers per player
#message: show text in chat (1) or actionbar
#damage: enable key damage while locking (1) or while unlocking (3) or on every use (2)
#key_name: Key with correct name can unlock chest (1)

#enable_containers: enable locking of containers (1)
#auto_containers: automatically unlock blocks when in reach (1)
#container_type: container only as hologramm (2) or as hologramm when it gets broken (1) or is unbreakable

#enable_doors: enable locking of doors (1)
#double_doors: always open bough sides of double door (1) disabled on #open_doors 
#open_doors: open door when near (1)
#auto_doors: unlock door when near (1)

#enable_trapgate: enable locking of trapdoors and fence gates (1)
#open_trapgate: open trapdoors and fence gates when near (1)
#auto_trapgate: unlock trapdoors and fence gates when near (1)

#show main menu
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s {"text":""}


tellraw @s {"text":"Key Lock Settings","bold":true}

tellraw @s {"text":""}
tellraw @s ["",{"text":"[ 🗁 ]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 10"}},{"text":" General Settings"}]
tellraw @s ["",{"text":"[ 🗁 ]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 50"}},{"text":" Key Damage Settings"}]
tellraw @s ["",{"text":"[ 🗁 ]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 20"}},{"text":" Container Settings"}]
tellraw @s ["",{"text":"[ 🗁 ]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 30"}},{"text":" Door Settings"}]
tellraw @s ["",{"text":"[ 🗁 ]","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players set @s keylock_settings 40"}},{"text":" Trapdoor and Fence Gate Settings"}]

tellraw @s {"text":""}
tellraw @s {"text":""}

#run submenus
execute unless score @s keylock_settings matches 20..59 run function keylock:settings/general
execute if score @s keylock_settings matches 20..29 run function keylock:settings/containers
execute if score @s keylock_settings matches 30..39 run function keylock:settings/doors
execute if score @s keylock_settings matches 40..49 run function keylock:settings/trapgate
execute if score @s keylock_settings matches 50..59 run function keylock:settings/damage

scoreboard players reset @s keylock_settings