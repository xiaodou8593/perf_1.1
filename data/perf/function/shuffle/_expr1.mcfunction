#perf:shuffle/_expr1

data modify storage perf:io afk prepend value "shuffle/seed_random"
data modify storage perf:io afk prepend value "shuffle/sort_random_opt"
data modify storage perf:io afk prepend value "shuffle/sort_random"

data modify storage perf:io afk prepend value "data/data_100"
data modify storage perf:io afk prepend value "powerload"