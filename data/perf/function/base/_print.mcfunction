#perf:base/_print
# 输出测试数据

data modify storage perf:io temp set from storage perf:class base

tellraw @a "--- base perf result ---"

execute store result score perf_cnt int run data get storage perf:io temp.cnt
execute store result score perf_n int run data get storage perf:io temp.n
tellraw @a ["cnt: ",{"score":{"name":"perf_cnt","objective":"int"}},"    n: ",{"score":{"name":"perf_n","objective":"int"}}]

execute store result score perf_min int run data get storage perf:io temp.min
execute store result score perf_max int run data get storage perf:io temp.max
tellraw @a ["min: ",{"score":{"name":"perf_min","objective":"int"}},"    max: ",{"score":{"name":"perf_max","objective":"int"}}]

execute store result score perf_avg int run data get storage perf:io temp.avg
scoreboard players operation perf_err int = perf_max int
scoreboard players operation perf_err int -= perf_avg int
scoreboard players operation sstemp int = perf_avg int
scoreboard players operation sstemp int -= perf_min int
scoreboard players operation perf_err int > sstemp int
scoreboard players operation perf_err int *= 100 int
scoreboard players operation perf_err int /= perf_avg int
tellraw @a ["avg: ",{"score":{"name":"perf_avg","objective":"int"}},"    err: ",{"score":{"name":"perf_err","objective":"int"}},"%"]

# 超过阈值重测
execute if score perf_err int <= perf_check int run return 0
tellraw @a "base perf restart"
data modify storage perf:io afk prepend value "base"