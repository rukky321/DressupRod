#> dressup_rod:rod/check/check_interacter
#
# @within dressup_rod:**

execute store result score #DR DR run data get entity @s interaction.player[0]
execute at @s positioned ~ ~-1 ~ as @p store result score #DR_ DR run data get entity @s UUID[0]

execute at @s positioned ~ ~-1 ~ as @p if score #DR DR = #DR_ DR run tag @s add DR_interact

scoreboard players reset #DR DR
scoreboard players reset #DR_ DR
