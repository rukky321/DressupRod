#> dressup_rod:rod/left_click/itemid/golden
#
# dressup_rod:rod/left_click/itemid/**

execute if score @s DR_apply_to matches 0 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/armor/itemid/golden
execute if score @s DR_apply_to matches 1 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/head/itemid/golden
execute if score @s DR_apply_to matches 2 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/chest/itemid/golden
execute if score @s DR_apply_to matches 3 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/legs/itemid/golden
execute if score @s DR_apply_to matches 4 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/feet/itemid/golden
