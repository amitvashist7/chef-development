name "base"
description "Chef base Role"
run_list "recipe[myusers]","role[client]"
