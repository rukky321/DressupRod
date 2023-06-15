#> dressup_rod:rod/check/check_dropper
#
# @within dressup_rod:**


execute store result score #DR DR run data get entity @s Thrower[0]
execute at @s as @a[tag=DR_select_rod,distance=..10] run function dressup_rod:rod/check/check_dropper_helper

execute if entity @a[tag=DR_drop] run kill @s



