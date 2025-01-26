#perf:utils/string/matcher/min_check
# perf:utils/string/matcher/next_char调用

execute if score sstemp_min int matches 1.. run scoreboard players set res int 0

function perf:utils/string/matcher/next
execute if score sssloop int matches 1.. run function perf:utils/string/matcher/min_check