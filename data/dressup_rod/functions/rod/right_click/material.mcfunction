#> dressup_rod:rod/right_click/material
#
# @within dressup_rod:rod/right_click/**

scoreboard players add @s DR_material 1
execute if score @s DR_material > #max DR_material run scoreboard players set @s DR_material 0