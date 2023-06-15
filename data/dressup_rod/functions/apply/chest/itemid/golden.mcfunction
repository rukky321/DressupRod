#> dressup_rod:apply/chest/itemid/golden
#
#> @within dressup_rod:rod/left_click/**

summon armor_stand ~ ~-10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_container"]}

item replace entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] armor.chest from entity @s armor.chest

data modify entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] ArmorItems[2].id set value "minecraft:golden_chestplate"

execute as @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] unless data entity @s ArmorItems[2].id run item replace entity @s armor.chest with minecraft:golden_chestplate

item replace entity @s armor.chest from entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] armor.chest

kill @e[type=armor_stand,tag=DR_container]
