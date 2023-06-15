#> dressup_rod:rod/check/check_direction
#
# @within dressup_rod:rod/**

#	識別用のDR_direction_checkerタグがついたマーカーを召喚する
summon marker ~ ~ ~ {Tags:["DR_direction_checker"]}

# マーカーの向きを実行者の向いてる方向に設定
data modify entity @e[sort=nearest,limit=1,tag=DR_direction_checker] Rotation set from entity @s Rotation

# この後に実行するループ関数を何回使用するかを設定する
scoreboard players operation #dc_loop_count DR = #dc_distance DR
scoreboard players operation #dc_loop_count DR *= #2 DR

#	ループ関数を実行
execute as @e[sort=nearest,limit=1,tag=DR_direction_checker] run function dressup_rod:rod/check/check_direction_loop

#	マーカーをキル
kill @e[tag=DR_direction_checker]

# スコアのリセット
scoreboard players reset #dc_loop_count DR