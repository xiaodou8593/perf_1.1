#perf:select/origin/loop

# 在这里写测试命令
data modify entity 0-0-0-0-1 Thrower set from entity 0-0-0-0-0 UUID
data modify entity 0-0-0-0-1 Thrower set from entity @s UUID

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:select/origin/loop