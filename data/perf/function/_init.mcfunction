#perf:_init
# 初始化性能测试包
# 需要手动执行

# 命令执行上限
gamerule maxCommandChainLength 2147483647

# 主世界设置
execute in minecraft:overworld run function marker_control:_init

# 设置记分板
scoreboard objectives add int dummy
scoreboard players set perf_start int -1
scoreboard players set 2 int 2
scoreboard players set 100 int 100

# 挂机池
data modify storage perf:io afk set value []

# 开启tick
schedule function perf:tick 1t replace

# 重测阈值
scoreboard players set perf_check int 8