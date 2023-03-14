# workstation
Automação de instalação de todo um ambiente desktop/servidor em Ansible


Para rodar o playbook localmente, siga as instruções abaixo:

* Certifique-se de que o Ansible está instalado na máquina local.
* Clone o repositório do projeto em uma pasta de sua preferência.
* Edite o arquivo `inventory/hosts` para especificar o(s) host(s) em que você deseja aplicar o playbook. Caso você deseje aplicar o playbook localmente, adicione o seguinte trecho no arquivo hosts:

```bash
[localhost]
127.0.0.1 ansible_connection=local
```

* Edite o arquivo `inventory/group_vars/all.yml` para definir as variáveis comuns a todos os hosts.
* Edite o arquivo `site.yml` para especificar quais papéis serão executados em cada host.
* Acesse a pasta raiz do projeto pelo terminal e execute o seguinte comando:

```bash
ansible-playbook site.yml
```

Caso você deseje aplicar o playbook em um host remoto, substitua o endereço IP ou nome do host no arquivo inventory/hosts.

### Conclusão

Esse playbook é um exemplo de como usar a ferramenta Ansible para instalar e configurar softwares e serviços em sistemas operacionais Debian e Fedora. O uso de uma estrutura modular e organizada ajuda a tornar o playbook mais fácil de ser gerenciado e reaproveitado em outros projetos.