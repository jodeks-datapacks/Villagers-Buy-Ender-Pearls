#> villagers_buy_ender_pearls:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage villagers_buy_ender_pearls:image data.image_data  
# @writes storage villagers_buy_ender_pearls:image data.width  
# @writes storage villagers_buy_ender_pearls:image data.height  
# @writes storage villagers_buy_ender_pearls:image data.background_color  
# @writes storage villagers_buy_ender_pearls:image data.description  
# @writes storage villagers_buy_ender_pearls:image data.pixel_character.blank  
# @writes storage villagers_buy_ender_pearls:image data.pixel_character.chat  
# @writes storage villagers_buy_ender_pearls:image data.pixel_character.lore

data remove storage villagers_buy_ender_pearls:image data.image_data
data remove storage villagers_buy_ender_pearls:image data.width
data remove storage villagers_buy_ender_pearls:image data.height
data remove storage villagers_buy_ender_pearls:image data.background_color
data remove storage villagers_buy_ender_pearls:image data.description

$data modify storage villagers_buy_ender_pearls:image data.image_data set value $(image_data)
$data modify storage villagers_buy_ender_pearls:image data.width set value $(width)
$data modify storage villagers_buy_ender_pearls:image data.height set value $(height)
$data modify storage villagers_buy_ender_pearls:image data.background_color set value "$(background_color)"
$data modify storage villagers_buy_ender_pearls:image data.description set value $(description)

data modify storage villagers_buy_ender_pearls:image data.pixel_character.blank set value "　"
data modify storage villagers_buy_ender_pearls:image data.pixel_character.pixel set value "▌▌"
data modify storage villagers_buy_ender_pearls:image data.pixel_character.line_break set value '\n'

function villagers_buy_ender_pearls:image/process/generate
