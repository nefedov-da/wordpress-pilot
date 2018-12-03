FROM gitlab-ci.sactech.org:5005/admins/images/wordpress:template-5.6
COPY . /var/www/html/
RUN  chown -R 33:33 /var/www/html
RUN  echo "${SYNCBACK_KEY_PUB}" > /root/.ssh/authorized_keys
