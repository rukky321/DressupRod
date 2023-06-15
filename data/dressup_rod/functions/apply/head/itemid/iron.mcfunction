#> dressup_rod:apply/head/itemid/iron
#
#> @within dressup_rod:rod/left_click/**

summon armor_stand ~ ~-10000 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["DR_container"]}

item replace entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] armor.head from entity @s armor.head

data modify entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] ArmorItems[3].id set value "minecraft:iron_helmet"

execute as @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] unless data entity @s ArmorItems[3].id run item replace entity @s armor.head with minecraft:iron_helmet

item replace entity @s armor.head from entity @e[type=armor_stand,tag=DR_container,sort=nearest,limit=1] armor.head

kill @e[type=armor_stand,tag=DR_container]
