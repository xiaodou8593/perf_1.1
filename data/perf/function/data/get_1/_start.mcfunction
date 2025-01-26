#perf:data/get_1/_start
# 开始模板测试

# 设置为文件夹名
data modify storage perf:io testing set value "data/get_1"

# 设置测试环境(例如在这里设置实体数量)
kill @e[tag=perf_data_get]
tag @e remove test_as_entity
summon marker 0 0 0 {Tags:["perf_data_get", "test_as_entity"]}
scoreboard players set @e[tag=perf_data_get,limit=1] killtime 100
data modify storage perf:io temp set value [{name:"alice", age:18, position:[1.0d, 2.0d, 3.0d], velocity:[0.5d, 0.4d, 0.3d]}]
data modify entity @e[tag=perf_data_get,limit=1] data.obj_1 set from storage perf:io temp
data modify storage perf:io temp set value [{name:"chris", age:20, position:[3.5d, 2.1d, 1.3d], velocity:[0.4d, 0.3d, 0.5d]}]
data modify entity @e[tag=perf_data_get,limit=1] data.obj_2 set from storage perf:io temp

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 10

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 10

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 1000000