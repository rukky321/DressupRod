#> dressup_rod:rod/right_click/color
#
# @within dressup_rod:rod/right_click/**

scoreboard players add @s DR_color 1
execute if score @s DR_color > #max DR_color run scoreboard players set @s DR_color 0