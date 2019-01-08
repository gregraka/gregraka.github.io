---
layout: default-admin
title: Step 1: Verify Server Quickstart System Requirements
---

# Step 1: Verify Server Quickstart System Requirements
Make sure that your system meets the following quickstart system requirements:

- Operating system: RHEL (RedHat Enterprise Linux) 7.2

- Web server: Apache 2.4.

- Database: MySQL/MariaDB with InnoDB storage engine (MyISAM is not supported.) 
  See [MySQL / MariaDB storage engine](https://doc.owncloud.org/server/10.0/admin_manual/configuration/database/linux_database_configuration.html#db-storage-engine-label).

- PHP 5.6+.

- Consider setting up a scale-out deployment, or using Federated 
  Cloud Sharing to keep individual ownCloud instances to a manageable size.

- Small workgroups and departments following this criteria:
  - Users: up to 150
  - Storage: 100GB to 10TB
  - High availability:
    - Zero-downtime backups via Btrfs snapshots
    - Component failures leads to interruption of service
    - Alternate backup scheme on other filesystems: nightly backups
      with service interruption

   **NOTE:** For information about backups, see Backup in [Scenario 1: Small Workgroups and Departments](https://doc.owncloud.org/server/10.0/admin_manual/installation/deployment_recommendations.html#scenario-1-small-workgroups-and-departments).
    
- Hardware topology:
  - One machine that contains the application, web, and database server, and 
    local storage.
  - Separate machine that contains your site's pre-existing LDAP or Active 
    Directory server.

- Hardware specifications:
  - One server-grade machine with: 
    - Two CPU cores (minimum)
    - 16GB RAM
    - Local storage (as needed)

- Transport Layer Security (formerly known as SSL): TLS is provided with Apache, 
  using a standard certificate according to the 
  [Apache documentation](https://httpd.apache.org/docs/2.4/ssl/ssl_howto.html).

- Authentication: User authentication using LDAP or Active Directory. See 
  [User Authentication with LDAP](https://doc.owncloud.org/server/10.0/admin_manual/configuration/user/user_auth_ldap.html).

- Session Management: Local session management on the application server. PHP 
  sessions are stored in a temporary filesystem, mounted at the operating 
  system-specific session storage location. 

  You can find out where that is by running **grep -R 'session.save_path' /etc/php5** and then add it to the **/etc/fstab** file, for example:
  ```
  echo "tmpfs /var/lib/php5/pool-www tmpfs defaults,noatime,mode=1777 0 0" >> /etc/fstab``.
  ```
- Memory Caching: A memory cache speeds up server performance, and ownCloud supports four of them. See [Configuring Memory Caching](https://doc.owncloud.org/server/10.0/admin_manual/configuration/server/caching_configuration.html).


## Next Step: Download and Install the Server
Go to [Step 2: Download and Install the ownCloud Server](./qs_admins_install.html).
