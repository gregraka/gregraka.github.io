---
layout: default-admin
title: Step 1: Verify Server Quickstart System Requirements
---

# Step 1: Verify Server Quickstart System Requirements
Make sure that your system meets the following quickstart system requirements:

- One of the following operating systems:
  - SLES 12 with SP1, SP2 and SP3
  - RHEL 6.9, 7.3, 7.4, and 7.5

- Web server: Apache 2.4.

- Database: MySQL/MariaDB with InnoDB storage engine 
  (MyISAM is not supported.) See [MySQL / MariaDB storage engine](https://doc.owncloud.org/server/10.0/admin_manual/configuration/database/linux_database_configuration.html#db-storage-engine-label).

- PHP 5.6+.

- Consider setting up a scale-out deployment, or using Federated 
  Cloud Sharing to keep individual ownCloud instances to a manageable size.

- Small workgroups and departments following this criteria:
  - Users: up to 150
  - Storage: 100 GB to 10 TB
  - High availability:
    - Zero-downtime backups via Btrfs snapshots
    - Component failures leads to interruption of service
    - Alternate backup scheme on other filesystems: nightly backups
      with service interruption

- Hardware topology:
  - One machine that contains the application, web, and database server, and local storage.
  - Another machine that contains your site's pre-existing LDAP or Active Directory server.

- Hardware specification:
  One server with at least 2 CPU cores, 16GB RAM, and local storage as needed.

- Transport Layer Security (formerly known as SSL)
  TLS is provide with Apache, using a standard certificate accord to the [Apache documentation](https://httpd.apache.org/docs/2.4/ssl/ssl_howto.html).

## Next Step: Install the Server
Go to [Step 2: Install the ownCloud Server](./qs_admins_install.html).
