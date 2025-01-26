#perf:utils/pstring/_rephi
# 字符串转动复原

scoreboard players operation sstemp_phi int = pstring_phi int
scoreboard players operation sstemp_phi int *= 2 int
execute if score sstemp_phi int >= pstring_n int run scoreboard players operation pstring_phi int -= pstring_n int

execute if score pstring_phi int matches 1.. run function perf:utils/pstring/rephi_loop
execute if score pstring_phi int matches ..-1 run function perf:utils/pstring/rephi_loop_neg