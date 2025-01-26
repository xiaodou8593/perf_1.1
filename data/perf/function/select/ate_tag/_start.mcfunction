#perf:select/ate_tag/_start
# 开始模板测试

# 设置为文件夹名
data modify storage perf:io testing set value "select/ate_tag"

# 设置测试环境(例如在这里设置实体数量)
scoreboard players set inp int 225
execute positioned 0 0 0 run function perf:_entities
tag @e remove test_as_entity
scoreboard players set temp int -1
execute as @e store result score @s int run scoreboard players add temp int 1
execute as @e if score @s int = temp int run tag @s add test_as_entity

# 设置开始测试延后时间(防止上一步消耗过大使tps波动)
scoreboard players set perf_start int 10

# 设置测试次数(测试多少个tick)
scoreboard players set perf_cnt int 10

# 设置单次测试递归次数(值必须整除10000000)
scoreboard players set perf_n int 1000000