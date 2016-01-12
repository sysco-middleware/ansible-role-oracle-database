FROM jeqo/oracle-linux-6

MAINTAINER Jorge Quilcate <quilcate.jorge@gmail.com>

ADD playbooks /srv/ansible-playbooks
WORKDIR /srv/ansible-playbooks
RUN ansible-playbook test-install-oracle-db-11g-ol6.yml -c local

EXPOSE 1521
CMD ["/bin/bash"]
