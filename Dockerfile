FROM gitlab-ci.sactech.org:5005/admins/images/wordpress:template-5.6
ARG  SSH_KEY_PUB
COPY . /var/www/html/
RUN  chown -R 33:33 /var/www/html
RUN  echo "${SSH_KEY_PUB}" > /root/.ssh/authorized_keys
