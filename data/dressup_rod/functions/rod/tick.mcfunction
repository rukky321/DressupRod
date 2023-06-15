#> dressup_rod:rod/tick
#
# @within dressup_rod:tick

# dressup_rodをもっていることを示すDR_select_rodタグを付与
tag @s add DR_select_rod

# プレイヤの頭に操作記録エンティティを召喚
execute at @s anchored eyes positioned ^ ^ ^ run summon interaction ~ ~-0.5 ~ {width:1.25f,height:1.25f,Tags:["DR_rod"]}

# それぞれの操作に対する処理を行う
execute if entity @s[tag=DR_interact] if entity @s[scores={DR_sneaking=1..}] run function dressup_rod:rod/shift_right_click/run
execute if entity @s[tag=DR_interact] unless entity @s[scores={DR_sneaking=1..}] run function dressup_rod:rod/right_click/run
execute if entity @s[tag=DR_attack] if entity @s[scores={DR_sneaking=1..}] run function dressup_rod:rod/shift_left_click/run
execute if entity @s[tag=DR_attack] unless entity @s[scores={DR_sneaking=1..}] run function dressup_rod:rod/left_click/check_target

# 半径5ブロック以内にプレイヤが視線を向けているモブがいれば、発光させタグをつける
execute at @s anchored eyes positioned ^ ^ ^ run function dressup_rod:rod/check/check_direction
execute as @e[tag=DR_dc_target] run function dressup_rod:rod/glowing

# 右クリック、左クリック検知時につけたタグを消去
tag @s remove DR_attack
tag @s remove DR_interact




