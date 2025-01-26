#perf:test

kill @s
tellraw @a ["item: ", {"nbt":"{}","entity":"@s"}]
data modify entity @s Health set value 5s
tellraw @a ["item: ", {"nbt":"{}","entity":"@s"}]