FROM 422207425354.dkr.ecr.ap-southeast-2.amazonaws.com/apache-php:7.1
ADD ./docker.tar /var/www/html/
RUN chmod -R 33:33 /var/www/html
