#perf:utils/string/matcher/first
# perf:utils/string/_match调用

execute store result score sstemp_min int run data get storage math:io input[0].range[0]
execute store result score sstemp_max int run data get storage math:io input[0].range[1]
scoreboard players set sstemp_cnt int 0
scoreboard players set sstemp_cur int 0