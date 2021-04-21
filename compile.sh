#!/bin/bash
echo "running test on cicd"

cd /var/www/html/

echo "working in html"

mv src/WebHookBundle/composer.json ./
pwd
ls -l 

composer validate --strict --no-check-version
      
composer install --prefer-dist --no-progress --ignore-platform-reqs
pwd
ls -l 
vendor/bin/pimcore-install --admin-username pimcore --admin-password pimcore --mysql-username pimcore --mysql-password pimcore --mysql-database pimcore --mysql-host-socket db





