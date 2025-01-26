#perf:tostring/sign/loop

# 在这里写测试命令
data modify block 0 11 0 back_text.messages[0] set value '["string_",{"score":{"name":"perf_loop","objective":"int"}}]'
data modify storage perf:io result set from block 0 11 0 back_text.messages[0]

scoreboard players remove perf_loop int 1
execute if score perf_loop int matches 1.. run function perf:tostring/sign/loop