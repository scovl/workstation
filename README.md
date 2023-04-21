# workstation
Automação de instalação de todo um ambiente desktop/servidor em Ansible. No momento o playbook suporta instalar ferramentas e serviços nas seguintes distribuições Linux:

* Debian
* Fedora
* Arch Linux
* RheHat Enterprise Linux
* CentOS

Além disso, também é possível usar este playbook para instalar e configurar ferramentas e serviços em BSDs, como FreeBSD e OpenBSD. Para rodar o playbook localmente, siga as instruções abaixo:

* Certifique-se de que o Ansible está instalado na máquina local. Se preferir, você pode usar o script `install_ansible.sh` para instalar o Ansible em sistemas Debian, Fedora, Arch Linux, RedHat Enterprise Linux, CentOS e BSDs.
* Clone o repositório do projeto em uma pasta de sua preferência.
* Edite o arquivo `inventory/hosts` para especificar o(s) host(s) em que você deseja aplicar o playbook. Caso você deseje aplicar o playbook localmente, basta executar o playbook como já está.
* Edite o arquivo `inventory/group_vars/all.yml` para definir as variáveis comuns a todos os hosts e serviços que você deseja instalar.
* Edite o arquivo `site.yml` para especificar quais papéis serão executados em cada host.

Por fim, acesse a pasta raiz do projeto pelo terminal e execute o seguinte comando para testar o playbook:

```bash
ansible-playbook -i inventory/hosts site.yaml --check --diff
```

Para aplicar o playbook, execute o seguinte comando:

```bash
ansible-playbook -i inventory/hosts site.yaml -bKk -vv
```

Para adicionar packages de instalação a depender da distro/OS que está usando, basta editar o arquivo `roles/desktop/vars/main.yml` e adicionar o nome do pacote a ser instalado. Por exemplo, para instalar o pacote `htop` no Debian, adicione a seguinte linha:

```yaml
debian_desktop_packages:
  - htop
```

> **NOTA**: para gerenciamento de senhas, você pode usar o Vault do Ansible. Para mais informações, consulte a documentação oficial do Ansible. Caso você deseje aplicar o playbook em um host remoto, substitua o endereço IP ou nome do host no arquivo inventory/hosts.

### Conclusão

Esse playbook é um exemplo de como usar a ferramenta Ansible para instalar e configurar softwares e serviços. O uso de uma estrutura modular e organizada ajuda a tornar o playbook mais fácil de ser gerenciado e reaproveitado em outros projetos.