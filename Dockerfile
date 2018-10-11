FROM 257040594755.dkr.ecr.ap-southeast-2.amazonaws.com/apache-php:5.6
ADD ./docker.tar /var/www/html/
RUN chown -R 33:33 /var/www/html
