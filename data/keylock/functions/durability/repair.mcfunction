kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:gold_ingot"}}]

#repair
scoreboard players remove @s keylock_craft 25
execute if score @s keylock_craft matches ..0 run scoreboard players set @s keylock_craft 0
execute store result entity @s Item.components.minecraft:damage int 1 run scoreboard players get @s keylock_craft

#sound
playsound minecraft:block.anvil.use master @p