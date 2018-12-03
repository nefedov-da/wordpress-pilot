FROM gitlab-ci.sactech.org:5005/admins/images/wordpress:template-5.6
COPY . /var/www/html/
<<<<<<< HEAD
RUN  chown -R 33:33 /var/www/html
RUN  echo "${SYNCBACK_KEY_PUB}" > /root/.ssh/authorized_keys
=======
RUN chown -R 33:33 /var/www/html
>>>>>>> 8442afadb3ed7fba6d3f26f79c1a7f7356f1acd5
