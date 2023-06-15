#> dressup_rod:rod/check/check_direction_loop
#
# @within dressup_rod:rod/check/check_direction

# 残り実行回数を１減らす
scoreboard players remove #dc_loop_count DR 1

# マーカーを向いている方向に0.5マスずつ移動させていき、マーカーの座標を中心とした１辺が0.2の立方体を当たり判定として、その範囲内にチェック対象のモブがいるかを調べ、見つかれば対象にDR_dc_targetタグを付与
execute at @s run tp @s ^ ^ ^0.5
execute at @s positioned ~-0.9 ~-0.9 ~-0.9 as @e[dx=0,type=#dressup_rod:check_target] run tag @s add DR_dc_check
execute at @s positioned ~-0.1 ~-0.1 ~-0.1 run tag @e[tag=DR_dc_check,dx=0,sort=nearest,limit=1] add DR_dc_target
tag @e[tag=DR_dc_check] remove DR_dc_check

# モブが見つかったがブロックに埋まっている場合にはDR_dc_targetタグを削除する
execute if entity @e[tag=DR_dc_target] at @s unless block ~ ~ ~ #dressup_rod:no_collision 

# ループ回数が残っており、モブが見つかっておらず、その地点のブロックは通り抜け可能な場合には再起呼び出しする。
execute unless score #dc_loop_count DR matches ..0 unless entity @e[tag=DR_dc_target] at @s if block ~ ~ ~ #dressup_rod:no_collision run function dressup_rod:rod/check/check_direction_loop