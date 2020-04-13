#! 
#
#   $1: module label used for generated roles and playbooks.
#   $1: specific module name (sometimes with version descriptions)
#
TEMPL="./template/"
TASKS="./template/tasks/"
INS="$1_yum_ins"
RM="$1_yum_rm"

echo $INS
echo $RM
 
ansible-galaxy init $INS
ansible-galaxy init $RM

# generate Role files
sed s/ins_module/$2/  < $TASKS/ins_main.yml > $INS/tasks/main.yml
sed s/rm_module/$2/  < $TASKS/rm_main.yml > $RM/tasks/main.yml
# generate playbooks
sed s/yum_ins_module/$INS/  < $TEMPL/ins_playbook.yml > $INS.yml
sed s/yum_rm_module/$RM/  < $TEMPL/rm_playbook.yml > $RM.yml






