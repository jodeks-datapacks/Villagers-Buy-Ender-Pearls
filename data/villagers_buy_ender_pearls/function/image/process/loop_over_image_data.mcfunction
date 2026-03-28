# Copy current pixel
data modify storage villagers_buy_ender_pearls:image data.current.pixel_color set \
  from storage villagers_buy_ender_pearls:image data.current.image_data[0]
data modify storage villagers_buy_ender_pearls:image data.current.description_text set \
  from storage villagers_buy_ender_pearls:image data.current.description[0]

scoreboard players add $index.image_data villagers_buy_ender_pearls.image 1

# Calculate column
scoreboard players operation $index.column villagers_buy_ender_pearls.image = $index.image_data villagers_buy_ender_pearls.image
scoreboard players operation $index.column villagers_buy_ender_pearls.image %= $width villagers_buy_ender_pearls.image

# Calculate row
scoreboard players operation $index.row villagers_buy_ender_pearls.image = $index.image_data villagers_buy_ender_pearls.image
scoreboard players operation $index.row villagers_buy_ender_pearls.image /= $width villagers_buy_ender_pearls.image

# Append start spacing
execute if score $index.column villagers_buy_ender_pearls.image matches 1 run \
  function villagers_buy_ender_pearls:image/process/append/blank

# Append colored pixel
execute unless data storage villagers_buy_ender_pearls:image data.current{pixel_color: ''} run \
  function villagers_buy_ender_pearls:image/process/append/pixel
# Append background pixel
execute if data storage villagers_buy_ender_pearls:image data.current{pixel_color: ''} run \
  function villagers_buy_ender_pearls:image/process/append/background

# Append description
execute if score $index.column villagers_buy_ender_pearls.image matches 0 run \
    function villagers_buy_ender_pearls:image/process/image_end/description

# Remove first element from the image_data array
data remove storage villagers_buy_ender_pearls:image data.current.image_data[0]
# Loop over rows
execute if score $index.row villagers_buy_ender_pearls.image < $height villagers_buy_ender_pearls.image run \
  function villagers_buy_ender_pearls:image/process/loop_over_image_data
 