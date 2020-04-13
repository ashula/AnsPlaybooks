#
#
#   Ansible private Playbooks
#
#    Ver-0.10: 14Apr2020, (c) t.m
#
#    1. $ bash yum.bash module_label  module_name
#
#        generate yum install role and yum remove role, and their playbooks
#        Roles with generated tasks from template files in ./template/tasks
#            module_lavel_yum_ins
#            module_label_yum_rm
#
#        playbook
#            module_lavel_yum_ins.yml
#            module_lavel_yum_rm.yml
#
#        Excution of playbooks from template tiles in ./template
#        $ ansible-playbook -i hosts.yml module_lavel_yum_ins.yml -K
#        $ ansible-playbook -i hosts.yml module_lavel_yum_rm.yml -K
#
#    2. 
#

