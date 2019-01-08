---
layout: default-admin
title: Step 2: Download and Install the ownCloud Server
---

# Step 2: Download and Install the ownCloud Server
1. Make sure that the your target machine has the necessary Red Hat Enterprise Linux (RHEL) 7.2 operating system extensions present:

     ```
     # Enable the RHEL Server 7 repository
     sudo subscription-manager repos --enable rhel-server-rhscl-7-eus-rpms

     # Install the required packages
     sudo yum install httpd mariadb-server php72 php72-php \
     php72-php-gd php72-php-mbstring php72-php-mysqlnd
     ```

2. Download the [tarball](https://owncloud.org/download/#owncloud-server-tar-ball).

   You should have a file named owncloud-x.y.z.tar.bz2 (where x.y.z is the version
   number).

3. Download its corresponding checksum file, (for example, owncloud-x.y.z.tar.bz2.md5 
   or owncloud-x.y.z.tar.bz2.sha256).

4. Verify the MD5 or SHA256 sum:

   ```
   md5sum -c owncloud-x.y.z.tar.bz2.md5 < owncloud-x.y.z.tar.bz2
   sha256sum -c owncloud-x.y.z.tar.bz2.sha256 < owncloud-x.y.z.tar.bz2
   md5sum  -c owncloud-x.y.z.zip.md5 < owncloud-x.y.z.zip
   sha256sum  -c owncloud-x.y.z.zip.sha256 < owncloud-x.y.z.zip
   ```
5. Extract the archive contents:

   ```
   tar -xjf owncloud-x.y.z.tar.bz2
   ```

   This unpacks to a single ownCloud directory. 

6. Copy the ownCloud directory to its final destination. 

7. Install ownCloud in your Apache document root:

   ```
   cp -r owncloud /var/www
   ```
## Next Step: Post-Installation Configuration
Congratulations! You have installed the ownCloud server. Go to 
[Step 3: Perform Server Post-Installation Configuration](./qs_admins_config.html).

