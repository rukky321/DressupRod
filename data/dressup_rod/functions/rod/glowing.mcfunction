#> dressup_rod:rod/glowing
#
# @within dressup_rod:rod/**

execute unless entity @s[nbt={Glowing:1b}] run tag @s add DR_glowing
execute if entity @s[tag=DR_glowing] run data modify entity @s Glowing set value 1b
tag @s add DR_targeted
tag @s remove DR_dc_target