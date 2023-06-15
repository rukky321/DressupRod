#> dressup_rod:rod/left_click/material/search/quartz
#
# dressup_rod:rod/left_click/material/search/**

execute if score @s DR_apply_to matches 0 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/armor/trim/material/quartz
execute if score @s DR_apply_to matches 1 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/head/trim/material/quartz
execute if score @s DR_apply_to matches 2 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/chest/trim/material/quartz
execute if score @s DR_apply_to matches 3 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/legs/trim/material/quartz
execute if score @s DR_apply_to matches 4 as @e[tag=DR_dc_target,limit=1] run function dressup_rod:apply/feet/trim/material/quartz
