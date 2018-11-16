FROM ${CI_REGISTRY}/admins/images/wordpress:template-5.6
COPY . /var/www/html/
RUN chown -R 33:33 /var/www/html
