#perf:data/index/macro/_start
# 开始模板测试

# 设置为文件夹名
data modify storage perf:io testing set value "data/index/macro"

# 设置测试环境(例如在这里设置实体数量)
data modify storage math:io list set from storage perf:io data
scoreboard players operation list_n int = data_n int
scoreboard players set list_phi int 0

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 10

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 10

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 100000