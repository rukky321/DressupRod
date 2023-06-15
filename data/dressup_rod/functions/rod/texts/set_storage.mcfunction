#> dressup_rod:rod/texts/set_storage
#
# @within dressup_rod:rod/texts/**


data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.mode
scoreboard players operation #search_id DR = @s DR_mode
execute store result score #loop DR run data get storage dressup_rod: texts.tmp.storage[0]
execute store result score #id DR run data get storage dressup_rod: texts.tmp.storage[0].id
execute store result score #loop DR run data get storage dressup_rod: texts.tmp.storage
execute store result score #id DR run data get storage dressup_rod: texts.tmp.storage[0].id
execute unless score #id DR = #search_id DR if score #loop DR matches 2.. run function dressup_rod:rod/texts/move_storage
data modify storage dressup_rod: texts.tmp.mode set from storage dressup_rod: texts.tmp.storage[0]

execute if score @s DR_mode matches 0 run scoreboard players operation #search_id DR = @s DR_pattern
execute if score @s DR_mode matches 0 run data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.pattern
execute if score @s DR_mode matches 1 run scoreboard players operation #search_id DR = @s DR_material
execute if score @s DR_mode matches 1 run data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.material
execute if score @s DR_mode matches 2 run scoreboard players operation #search_id DR = @s DR_itemid
execute if score @s DR_mode matches 2 run data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.item
execute if score @s DR_mode matches 3 run scoreboard players operation #search_id DR = @s DR_color
execute if score @s DR_mode matches 3 run data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.color
execute if score @s DR_mode matches 4 run scoreboard players operation #search_id DR = @s DR_enchant
execute if score @s DR_mode matches 4 run data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.glint
execute store result score #loop DR run data get storage dressup_rod: texts.tmp.storage
execute store result score #id DR run data get storage dressup_rod: texts.tmp.storage[0].id
execute unless score #id DR = #search_id DR if score #loop DR matches 2.. run function dressup_rod:rod/texts/move_storage
data modify storage dressup_rod: texts.tmp.data set from storage dressup_rod: texts.tmp.storage[0]

data modify storage dressup_rod: texts.tmp.storage set from storage dressup_rod: texts.slot
scoreboard players operation #search_id DR = @s DR_apply_to
execute store result score #loop DR run data get storage dressup_rod: texts.tmp.storage
execute store result score #id DR run data get storage dressup_rod: texts.tmp.storage[0].id
execute unless score #id DR = #search_id DR if score #loop DR matches 2.. run function dressup_rod:rod/texts/move_storage
data modify storage dressup_rod: texts.tmp.slot set from storage dressup_rod: texts.tmp.storage[0]

scoreboard players reset #search_id DR
scoreboard players reset #id DR
scoreboard players reset #loop DR
