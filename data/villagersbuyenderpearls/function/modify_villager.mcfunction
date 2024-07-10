data modify entity @s Offers.Recipes[0].rewardExp set value 1b

data modify entity @s Offers.Recipes[1].maxUses set value 50

data modify entity @s Offers.Recipes[2].uses set value 50

data modify entity @s Offers.Recipes[3].xp set value 2

data modify entity @s Offers.Recipes[4].priceMultiplier set value 0.05f


data modify entity @s Offers.Recipes[5].buy.id set value "minecraft:ender_pearl"

data modify entity @s Offers.Recipes[5].buy.count set value 2


data modify entity @s Offers.Recipes[5].sell.id set value "minecraft:emerald"

data modify entity @s Offers.Recipes[5].sell.count set value 1


tag @s add villagersbuyenderpearls.modified

