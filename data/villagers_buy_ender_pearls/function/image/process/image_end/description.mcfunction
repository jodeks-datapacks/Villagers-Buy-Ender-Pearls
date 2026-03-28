# Append blank
function villagers_buy_ender_pearls:image/process/append/blank

data modify storage villagers_buy_ender_pearls:image data.tellraw append \
  from storage villagers_buy_ender_pearls:image data.current.description_text

# Append blank
function villagers_buy_ender_pearls:image/process/append/blank

# Append line_break
execute unless score $index.image_data villagers_buy_ender_pearls.image = $length villagers_buy_ender_pearls.image \
  run function villagers_buy_ender_pearls:image/process/append/line_break

# Remove first element from the description
data remove storage villagers_buy_ender_pearls:image data.current.description[0]
 