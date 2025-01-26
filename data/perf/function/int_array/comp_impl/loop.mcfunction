#perf:int_array/comp_impl/loop

# 在这里写测试命令
execute store result score x int run data get storage perf:io x
execute store result score y int run data get storage perf:io y
execute store result score z int run data get storage perf:io z

execute store result storage perf:io x int 1 run scoreboard players get x int
execute store result storage perf:io y int 1 run scoreboard players get y int
execute store result storage perf:io z int 1 run scoreboard players get z int

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:int_array/comp_impl/loop