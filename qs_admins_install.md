---
layout: default-admin
title: Step 2: Install the ownCloud Server
---

# Step 2: Install the Server
1. Download the [tarball](https://owncloud.org/download/#owncloud-server-tar-ball).

2. Make sure that the your target machine has the necessary operating system extensions present:

   - RHEL 7.2
     ```
     # Enable the RHEL Server 7 repository
     sudo subscription-manager repos --enable rhel-server-rhscl-7-eus-rpms

     # Install the required packages
     sudo yum install httpd mariadb-server php72 php72-php \
     php72-php-gd php72-php-mbstring php72-php-mysqlnd
     ```
   - SLES 12
     ```
      sudo zypper install -y apache2 apache2-mod_php7 php7-gd php7-openssl \
      php7-json php7-curl php7-intl php7-sodium php7-zip php7-zlib
     ```
    


## Next Step: Enable Users to Connect
Go to [Step 3: Enable Users to Connect to the ownCloud Server](./qs_admins_connect.html).

