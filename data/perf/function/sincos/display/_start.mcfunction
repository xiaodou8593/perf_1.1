#perf:sincos/display/_start
# 开始模板测试

# 设置为文件夹名
data modify storage perf:io testing set value "sincos/display"

# 设置测试环境
scoreboard players set test int 0
tag @e remove test_as_entity
summon item_display 0 0 0 {Tags:["test_as_entity"]}
scoreboard players set @e[tag=test_as_entity,limit=1] killtime 500
data modify storage perf:io angle_axis set value {angle:0.0f, axis:[1.0f,0.0f,0.0f]}

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 10

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 10

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 100000