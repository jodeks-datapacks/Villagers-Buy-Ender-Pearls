execute as @e[type=villager,tag=!villagersbuyenderpearls.modified] if entity @e[tag=!villagersbuyenderpearls.modified,type=villager,nbt={VillagerData:{level:5,profession:"minecraft:cleric", type: "minecraft:plains"}}] run function villagersbuyenderpearls:modify_villager


scoreboard players enable @a help.villagersbuyenderpearls

execute as @a if score @s help.villagersbuyenderpearls matches 1 run function villagersbuyenderpearls:trigger_help