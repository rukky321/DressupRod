#> dressup_rod:rod/right_click/run
#
# @within dressup_rod:rod/tick

execute unless score @s DR_mode matches -2147483648..2147483647 run scoreboard players set @s DR_mode 0

execute if score @s DR_mode matches 0 run function dressup_rod:rod/right_click/pattern
execute if score @s DR_mode matches 1 run function dressup_rod:rod/right_click/material
execute if score @s DR_mode matches 2 run function dressup_rod:rod/right_click/itemid
execute if score @s DR_mode matches 3 run function dressup_rod:rod/right_click/color
execute if score @s DR_mode matches 4 run function dressup_rod:rod/right_click/enchant
execute if score @s DR_mode matches 5..6 run function dressup_rod:rod/right_click/saves

playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2 1

function dressup_rod:rod/texts/show_setting