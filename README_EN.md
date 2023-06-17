# DressupRod
Minecraft Datapack for 1.20

## Description
This data pack adds a tool to change an entity's armor items with one click.   
The only version that has been confirmed to work is 1.20.  
I created this data pack so that it works in multiplayer, but it is unconfirmed whether it actually works.    

## How to install
1. Download this data pack and unzip it.  
2. Put the unzipped folder in the "datapacks" folder of the world you want to use it.  
3. Type "/reload" in-game for worlds you've opened at least once.   
    
## How to use
By typing "/function dressup_rod:give", you can get the special item "Dress-up Rod".  
You can use this item by holding it in your main hand and doing a specific action.  

#### sneak + left click
You can change mode.  
There are 7 modes available: Trim.pattern, Trim.material, Armor.material, Color, Glint, Save, and Load.  

#### sneak + right click
You can specify the part of the armor items to change.   
There are 5 types of parts that can be specified: armor, head, chest, legs, and feet.  

#### right click
Depending on the mode, you can specify how the target's armor items are actually changed.   
ex) When the mode is Color, it can be specified in the form of yellow, red, and so on.  

#### left click
You can reflect the settings made above to the target the player is facing.   
the target that can be reflected will have a glowing effect.  

#### drop
You can reflect the settings to yourself.  

#### sneak + drop
You can undo the last edit you made. By default, you can undo edits up to 30 times ago.  

## Details
#### About each mode
##### 1. Trim.pattern
You can edit the Armor Trims pattern of armor items
If you have not changed Trim.material, it will not be reflected in the appearance.
##### 2. Trim.material
You can edit the Armor Trims color of armor items.   
If you do not change Trim.pattern, it will not be reflected in the appearance.  
##### 3. Armor.material
You can edit the material of the armor items.  
ex) Change the equipment to full-body netherite equipment.
##### 4. Color
You can change the color of leather equipment.    
There are 16 colors that can be changed.
##### 5. Glint
You can turn on or off the enchantment glint on your equipment.   
If the equipment originally had an enchantment on it, it will be erased.
##### 6. Save
You can save the state of the target armor items in the player's individual storage.  
The maximum number of saves is 16 by default.
##### 7. Load
You can apply the data you saved in storage to the target.

#### The value you can change
This data pack allows you to change some data by rewriting the score in-game.   
The values that can be changed are described below.  
1. Maximum number saves: Can be changed by typing "/scoreboard players set #max DR_saves <value>".  
2. Maximum number of histories: Can be changed by typing "/scoreboard players set #max DR_history <value>".  
3. Reach of this item: Can be changed by typing "/scoreboard players set #dc_distance DR <value>".

## License
These codes are released under the MIT License, see LICENSE.
