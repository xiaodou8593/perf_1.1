#perf:test_start

scoreboard players set perf_timer int 0
scoreboard players set perf_test_started int 1

scoreboard players set perf_max int 0
scoreboard players set perf_min int 2147483647
scoreboard players set perf_avg int -1

data modify storage perf:io list_res set value []

$tellraw @a "$(testing) perf start"