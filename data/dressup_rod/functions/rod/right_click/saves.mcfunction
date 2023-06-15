#> dressup_rod:rod/right_click/saves
#
# @within dressup_rod:rod/right_click/**

scoreboard players add @s DR_saves 1
execute if score @s DR_saves > #max DR_saves run scoreboard players set @s DR_saves 0