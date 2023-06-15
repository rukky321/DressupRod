#> dressup_rod:rod/right_click/itemid
#
# @within dressup_rod:rod/right_click/**

scoreboard players add @s DR_itemid 1
execute if score @s DR_itemid > #max DR_itemid run scoreboard players set @s DR_itemid 0