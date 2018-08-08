name "workstation"
description "Chef Workstation Role"
run_list "recipe[workstation]","recipe[myusers]"
