FROM jeqo/oracle-database-11g

MAINTAINER Jorge Quilcate <jorge.quilcate@sysco.no>

ADD playbooks /srv/ansible-playbooks
WORKDIR /srv/ansible-playbooks
RUN ansible-playbook local-jeqo-db.yml -c local

EXPOSE 1521
CMD ["/bin/bash"]
