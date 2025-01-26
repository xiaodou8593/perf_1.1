#perf:utils/string/_rephi
# 字符串转动复原

scoreboard players operation sstemp_phi int = string_phi int
scoreboard players operation sstemp_phi int *= 2 int
execute if score sstemp_phi int >= string_n int run scoreboard players operation string_phi int -= string_n int

execute if score string_phi int matches 1.. run function perf:utils/string/rephi_loop
execute if score string_phi int matches ..-1 run function perf:utils/string/rephi_loop_neg