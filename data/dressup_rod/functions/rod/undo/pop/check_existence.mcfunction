#> dressup_rod:rod/undo/pop/check_existence
#
# @within dressup_rod:rod/undo/pop/entitydata

execute store result score #DR__ DR run data get entity @s UUID[0]

execute if score #DR__ DR = #DR_ DR run tag @s add DR_target

scoreboard players reset #DR__ DR
