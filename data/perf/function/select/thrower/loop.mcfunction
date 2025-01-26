#perf:select/thrower/loop

# 在这里写测试命令
data modify entity 0-0-0-0-1 Thrower set from storage perf:io uuid
execute as 0-0-0-0-1 on origin run scoreboard players set @s int 0
data modify entity 0-0-0-0-1 Thrower set from storage perf:io next_uuid
execute as 0-0-0-0-1 on origin run scoreboard players set @s int 0

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:select/thrower/loop