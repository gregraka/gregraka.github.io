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
  (MyISAM is not supported, see: MySQL / MariaDB storage engine)

- PHP 5.6+.

- Consider setting up a scale-out deployment, or using Federated 
  Cloud Sharing to keep individual ownCloud instances to a manageable size.

- Small workgroups and departments following this criteria:
  - Users: up to 150
  - Storage: 100 GB to 10 TB
  - High availability:
    - Zero-downtime backups via Btrfs snapshots
    - Component failures leads to interruption of service
    - Alternate backup scheme on other filesystems: nightly backups,
      with service interruption

## Next Step: Install the Server
Go to [Step 2: Install the ownCloud Server](./qs_admins_install.html).
