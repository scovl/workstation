CHANGELOG

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

## [0.0.1] - 2023-03-17
Adicionado

* Arquivo ansible-install.sh para instalação do Ansible
* Arquivo ansible.cfg para configurações globais do Ansible
* Arquivo inventory/hosts para definição dos hosts gerenciados pelo Ansible
* Arquivo inventory/group_vars/all.yaml para definição de variáveis globais
* Arquivo roles/desktop/tasks/main.yaml para instalação de pacotes de desktop em diferentes sistemas operacionais
* Arquivo roles/desktop/vars/main.yaml para definição de variáveis específicas do papel desktop
* Arquivo roles/desktop/templates/desktop.conf.j2 para template de arquivo de configuração de desktop
* Arquivo roles/desktop/handlers/main.yaml para definição de handlers específicos do papel desktop
* Arquivo roles/development/tasks/main.yaml para instalação de pacotes de desenvolvimento
* Arquivo roles/tasks/main.yaml para tarefas globais do projeto
* Arquivo roles/vars/main.yaml para variáveis globais do projeto
* Arquivo site.yaml para definição das tarefas que serão executadas nos hosts gerenciados