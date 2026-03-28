scoreboard objectives add jodek.config dummy
execute unless score &villagers_buy_ender_pearls_load_message jodek.config = &villagers_buy_ender_pearls_load_message jodek.config run scoreboard players set &villagers_buy_ender_pearls_load_message jodek.config 1
execute unless score &villagers_buy_ender_pearls_advancements jodek.config = &villagers_buy_ender_pearls_advancements jodek.config run scoreboard players set &villagers_buy_ender_pearls_advancements jodek.config 1

scoreboard objectives add villagers_buy_ender_pearls.image dummy

# Print the image
function villagers_buy_ender_pearls:config/image