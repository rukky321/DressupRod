#> dressup_rod:rod/shift_left_click/run
#
# @within dressup_rod:rod/tick

scoreboard players add @s DR_mode 1
execute if score @s DR_mode > #max DR_mode run scoreboard players set @s DR_mode 0

playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1 1

function dressup_rod:rod/texts/show_setting