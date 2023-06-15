#> dressup_rod:rod/left_click/pattern/search/0_1
#
# dressup_rod:rod/left_click/pattern/search/**

execute if score @s DR_pattern matches 0 run function dressup_rod:rod/left_click/pattern/search/coast
execute if score @s DR_pattern matches 1 run function dressup_rod:rod/left_click/pattern/search/dune
