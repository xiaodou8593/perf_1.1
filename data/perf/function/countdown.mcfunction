#perf:countdown
# perf:tick调用

scoreboard players remove perf_start int 1
execute if score perf_start int matches 0 run function perf:preprocess