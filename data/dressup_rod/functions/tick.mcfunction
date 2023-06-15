#> dressup_rod:tick
#
# @private

# 初めてロッドを持ったプレイヤの初期化処理を行う
execute as @a[tag=!DR_initialized] run function dressup_rod:rod/init

# 右クリック左クリックを検知し、それが対象者の行動であるかをUUIDを用いて調べる
execute as @e[tag=DR_rod] if data entity @s interaction run function dressup_rod:rod/check/check_interacter
execute as @e[tag=DR_rod] if data entity @s attack run function dressup_rod:rod/check/check_attacker

# プレイヤがロッドを捨てたことを検知し、操作を行う。
execute as @e[type=item,nbt={Item:{tag:{DR:1}},PickupDelay:40s}] run function dressup_rod:rod/check/check_dropper
execute as @a[tag=DR_drop] run function dressup_rod:rod/drop

# 視線を向けられていることを示すタグを消去
tag @e[tag=DR_targeted] remove DR_targeted

# ロッドを持っていることを示すタグを消去
tag @a remove DR_select_rod

# ロッドを捨てたことの検知に使ったタグを消去
tag @a remove DR_drop

# 操作記録エンティティをkill
execute as @e[type=interaction,tag=DR_rod] at @s run tp ~ ~-10000 ~
execute as @e[type=interaction,tag=DR_rod] run kill @s 

# ロッドを持っているプレイヤに対し、それを示すDR_select_rodタグを付与、操作記録エンティティを召喚、各種操作の処理、プレイヤの視線が向けられているモブを判定しタグ付け、
execute as @a[nbt={SelectedItem:{tag:{DR:1}}}] run function dressup_rod:rod/tick

# 発光させているのに視線を向けられていないモブの発光を消去
execute as @e[tag=DR_glowing] unless entity @s[tag=DR_targeted] run data modify entity @s Glowing set value 0b
execute as @e[tag=DR_glowing] unless entity @s[tag=DR_targeted] run tag @s remove DR_glowing

# スニーク検知用スコアをリセット
scoreboard players reset @a DR_sneaking
