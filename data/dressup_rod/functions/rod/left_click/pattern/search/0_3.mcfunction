#> dressup_rod:rod/left_click/pattern/search/0_3
#
# dressup_rod:rod/left_click/pattern/search/**

execute if score @s DR_pattern matches 0..1 run function dressup_rod:rod/left_click/pattern/search/0_1
execute if score @s DR_pattern matches 2..3 run function dressup_rod:rod/left_click/pattern/search/2_3
