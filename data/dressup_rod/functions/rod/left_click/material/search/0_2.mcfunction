#> dressup_rod:rod/left_click/material/search/0_2
#
# dressup_rod:rod/left_click/material/search/**

execute if score @s DR_material matches 0..1 run function dressup_rod:rod/left_click/material/search/0_1
execute if score @s DR_material matches 2 run function dressup_rod:rod/left_click/material/search/diamond
