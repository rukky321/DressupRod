#> dressup_rod:rod/right_click/pattern
#
# @within dressup_rod:rod/right_click/**

scoreboard players add @s DR_pattern 1
execute if score @s DR_pattern > #max DR_pattern run scoreboard players set @s DR_pattern 0
