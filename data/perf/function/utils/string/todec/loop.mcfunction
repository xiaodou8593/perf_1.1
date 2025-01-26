#perf:utils/string/todec/loop
# perf:utils/string/_todec调用

$function perf:utils/string/todec/chars/$(char)

data remove storage math:io temp[0]
execute if data storage math:io temp[0] run function perf:utils/string/todec/loop with storage math:io temp[0]