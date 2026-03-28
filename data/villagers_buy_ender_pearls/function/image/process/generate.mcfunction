#> villagers_buy_ender_pearls:image/process/generate
#
# This function generates the image data.

data modify storage villagers_buy_ender_pearls:image data.current.image_data set from storage villagers_buy_ender_pearls:image data.image_data
data modify storage villagers_buy_ender_pearls:image data.current.description set from storage villagers_buy_ender_pearls:image data.description
data modify storage villagers_buy_ender_pearls:image data.current.pixel_character set from storage villagers_buy_ender_pearls:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data villagers_buy_ender_pearls.image 0
# Set width
execute store result score $width villagers_buy_ender_pearls.image run data get storage villagers_buy_ender_pearls:image data.width
# Set height
execute store result score $height villagers_buy_ender_pearls.image run data get storage villagers_buy_ender_pearls:image data.height
# Set length
scoreboard players operation $length villagers_buy_ender_pearls.image = $width villagers_buy_ender_pearls.image
scoreboard players operation $length villagers_buy_ender_pearls.image *= $height villagers_buy_ender_pearls.image
# Clear remaining entries in tellraw
data remove storage villagers_buy_ender_pearls:image data.tellraw

# Add spacing on top
function villagers_buy_ender_pearls:image/process/append/line_break
# Loop over image data
function villagers_buy_ender_pearls:image/process/loop_over_image_data
# Add spacing on bottom
function villagers_buy_ender_pearls:image/process/append/line_break