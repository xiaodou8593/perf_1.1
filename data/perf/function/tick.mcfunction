#perf:tick

# 安排perf挂机项目
execute if score perf_start int matches -1 if data storage perf:io afk[0] run function perf:afk
execute if score perf_start int matches 0 unless entity @e[tag=test_as_entity] run function perf:testing with storage perf:io {}
execute if score perf_start int matches 0 as @e[tag=test_as_entity,limit=1] run function perf:testing with storage perf:io {}
execute if score perf_start int matches 1.. run function perf:countdown

# 清空perf_entity
execute if score perf_start int matches -1 if entity @e[tag=perf_entity] run function perf:_clear_entities

# 继续tick
schedule function perf:tick 1t replace