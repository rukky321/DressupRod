#> dressup_rod:load
#
# @private

#>
# メインで使うスコア。
#	一時的な計算などに使う。
# @within dressup_rod:**
scoreboard objectives add DR dummy

#>
#スニーク検知用スコア
#	@within dressup_rod:**
scoreboard objectives add DR_sneaking minecraft.custom:minecraft.sneak_time

#>
# プレイヤごとのロッドの状態を保存するスコア
# @within dressup_rod:**
	scoreboard objectives add DR_mode dummy
	scoreboard objectives add DR_apply_to dummy
	scoreboard objectives add DR_pattern dummy
	scoreboard objectives add DR_material dummy
	scoreboard objectives add DR_color dummy
	scoreboard objectives add DR_itemid dummy
	scoreboard objectives add DR_enchant dummy
	scoreboard objectives add DR_saves dummy
	scoreboard objectives add DR_history dummy

# スコアの値が設定されていなければ、設定する
execute unless score #max DR_mode matches -2147483648..2147483647 run function dressup_rod:set_scores

#定数
scoreboard players set #2 DR 2
scoreboard players set #3 DR 3
scoreboard players set #4 DR 4
scoreboard players set #5 DR 5
scoreboard players set #10 DR 10
scoreboard players set #16 DR 16
scoreboard players set #64 DR 64
scoreboard players set #256 DR 256

# ストレージの初期化が行われていなければ初期化
execute unless data storage dressup_rod: players run function dressup_rod:storage/init

# テキストストレージの初期化が行われていなければ初期化
execute unless data storage dressup_rod: texts run function dressup_rod:rod/texts/init_texts


