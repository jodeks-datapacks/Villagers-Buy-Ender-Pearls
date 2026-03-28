advancement revoke @a only villagers_buy_ender_pearls:villager_trade

execute at @s as @e[type=minecraft:villager,nbt={VillagerData:{level:5,profession:"minecraft:cleric"}},tag=!villagers_buy_ender_pearls.modified] run function villagers_buy_ender_pearls:app/modify_villager