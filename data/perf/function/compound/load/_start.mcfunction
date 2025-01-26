#perf:compound/load/_start

# 清空集合
data modify storage perf:io compound set value {}
data modify storage perf:io compound_keys set value []
scoreboard players set perf_compound_n int 0

# 获取数据
recipe give @p *
data modify storage perf:io data set from entity @p recipeBook.recipes
recipe take @p *

# 向集合添加数据
data modify storage perf:io key set from storage perf:io data[0]
execute store result score perf_compound_n int store result score loop int if data storage perf:io data[]
execute if score loop int matches 1.. run function perf:compound/load/loop with storage perf:io {}

# 设置为文件夹名
data modify storage perf:io testing set value "compound/load"

# 设置测试环境(例如在这里设置实体数量)
scoreboard players set inp int 25
execute positioned 0 0 0 run function perf:_entities

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 50

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 0

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 0