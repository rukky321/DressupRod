#> dressup_rod:rod/left_click/itemid/chainmail
#
# dressup_rod:rod/left_click/itemid/**

execute if score @s DR_apply_to matches 0 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/armor/itemid/chainmail
execute if score @s DR_apply_to matches 1 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/head/itemid/chainmail
execute if score @s DR_apply_to matches 2 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/chest/itemid/chainmail
execute if score @s DR_apply_to matches 3 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/legs/itemid/chainmail
execute if score @s DR_apply_to matches 4 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/feet/itemid/chainmail
