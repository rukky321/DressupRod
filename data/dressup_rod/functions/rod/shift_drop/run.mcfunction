#> dressup_rod:rod/shift_drop/run
#
# @within dressup_rod:rod/drop

# undo操作を行う
function dressup_rod:rod/undo/pop

# undoの結果に応じてアクションバーに表示を行い、音を鳴らす
execute if score #undo_result DR matches 0 run title @s actionbar {"text":"undo succeeded"}
execute if score #undo_result DR matches 0 run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.5 1
execute if score #undo_result DR matches 1 run title @s actionbar {"text":"There is no history"}
execute if score #undo_result DR matches 1 run playsound minecraft:entity.generic.extinguish_fire master @s ~ ~ ~ 1 2 1
execute if score #undo_result DR matches 2 run title @s actionbar {"text":"There are no target"}
execute if score #undo_result DR matches 2 run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1
