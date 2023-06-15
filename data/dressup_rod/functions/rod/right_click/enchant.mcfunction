#> dressup_rod:rod/right_click/enchant
#
# @within dressup_rod:rod/right_click/**

scoreboard players add @s DR_enchant 1
execute if score @s DR_enchant > #max DR_enchant run scoreboard players set @s DR_enchant 0