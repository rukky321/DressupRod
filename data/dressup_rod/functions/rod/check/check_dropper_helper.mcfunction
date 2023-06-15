#> dressup_rod:rod/check/check_dropper_helper
#
# @within dressup_rod:rod/check/check_dropper

execute store result score #DR_ DR run data get entity @s UUID[0]
execute if score #DR DR = #DR_ DR run tag @s add DR_drop

scoreboard players reset #DR DR
scoreboard players reset #DR_ DR