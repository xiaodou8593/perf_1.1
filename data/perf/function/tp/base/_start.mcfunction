#perf:tp/base/_start
# 开始模板测试

# 设置为文件夹名
data modify storage perf:io testing set value "tp/base"

# 设置测试环境(例如在这里设置实体数量)
tag @e remove test_as_entity
kill @e[tag=perf_tp_entity]
summon marker 0 11 0 {Tags:["perf_tp_entity","test_as_entity"]}

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 10

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 10

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 1000000