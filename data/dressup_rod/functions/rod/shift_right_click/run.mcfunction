#> dressup_rod:rod/shift_right_click/run
#
# @within dressup_rod:rod/tick


scoreboard players add @s DR_apply_to 1
execute if score @s DR_apply_to > #max DR_apply_to run scoreboard players set @s DR_apply_to 0

playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5 1

function dressup_rod:rod/texts/show_setting