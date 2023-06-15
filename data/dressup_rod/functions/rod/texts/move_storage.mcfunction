#> dressup_rod:rod/texts/move_storage
#
# @within dressup_rod:rod/texts/set_storage

scoreboard players remove #loop DR 1

data modify storage dressup_rod: texts.tmp.storage append from storage dressup_rod: texts.tmp.storage[0]
data remove storage dressup_rod: texts.tmp.storage[0]

execute store result score #id DR run data get storage dressup_rod: texts.tmp.storage[0].id
execute unless score #id DR = #search_id DR if score #loop DR matches 2.. run function dressup_rod:rod/texts/move_storage