---
layout: default-admin
title: Step 3: Server Post-Installation Configuration
---

# Step 3: Server Post-Installation Configuration
**IMPORTANT: For quickstart purposes, the ownCloud server is unsecured using 
the default Apache HTTP port, 8080. If you want to secure your server, see 
[Enable SSL](https://doc.owncloud.org/server/administration_manual/installation/manual_installation.html#enable-ssl).**

You must perform the following configuration after installing the ownCloud server:
* Set strong directory permissions
* Configure Apache web server
* Create the administrator credentials
* Specify the database type and data location
* Identify trusted domains

## Set Strong Directory Permissions

**IMPORTANT: For hardened security, we recommend setting the permissions on your
ownCloud directories as strictly as possible, and for proper server operations. 
This should be done immediately as after installation.**

Your HTTP user must own config/, data/, apps/ under the respective
apps-external/ directories, to be able to able to use the ownCloud Web interface. 

Your HTTP user and group is **apache**.

**IMPORTANT: When using an NFS mount for the data directory, do not change its 
ownership from the default. Mounting the sets proper permissions for ownCloud to 
write to the directory. Changing ownership can result in some issues if the NFS 
mount is lost.** 

Run the script listed in 
[Post-Installation Steps](https://doc.owncloud.org/server/10.0/admin_manual/installation/installation_wizard.html#post-installation-steps-label).
Make sure that you carefully read the information at the cited URL, as some 
script variables must contain values particular to your site.

## Configure Apache Web Server
Perform the following tasks on your Apache web server:
* Enable the **mod_rewrite** module:
  ```
  a2enmod rewrite
  ```
* Enable the following recommend modules:
  ```
  a2enmod headers
  a2enmod env
  a2enmod dir
  a2enmod mime
  ```
  **TIP:** If you want to use the OAuth2 app, then mod_headers must be 
  installed and enabled.

* You must disable any server-configured authentication for ownCloud, 
  as it uses Basic authentication internally for DAV services. If 
  you have turned on authentication on a parent folder (for example, 
  an AuthType Basic directive), you can disable the authentication 
  specifically for the ownCloud entry. In the Apache configuration file, 
  add the following line in the <Directory> section:
  ```
  Satisfy Any
  ```
* When you are finished, remember to restart Apache:
  ```
  service apache2 restart
  ```
* If you run ownCloud in a sub-directory and want to use CalDAV or CardDAV 
  clients, make sure you have configured the correct 
  [Service discovery](https://doc.owncloud.org/server/10.0/admin_manual/issues/general_troubleshooting.html#service-discovery-label) URLs.

* Multi-Processing Module (MPM)
  Apache prefork has to be used. Do not use a threaded **MPM** like **event** 
  or **worker** with **mod_php**, because PHP is currently 
  [not thread safe](https://secure.php.net/manual/en/install.unix.apache2.php).

## Create the Administrator Account
To create the ownCloud server administrator account, follow these steps:

1. On the ownCloud server machine, open a web browser and enter the following address:
   ```
   http://localhost/owncloud
   ```
2. Enter a username and password for the admininstrator.

3. Click **Finish setup**.

## Specify the Database Type and Data Location
To specify the type of database and where the ownCloud date directory reside, follow these steps:

1. The ownCloud data directory must exist. If it does not, create it before proceeding.

   **NOTE:** The data directory must be owned by your HTTP user. 
   See the earlier sub-section, "Set Strong Directory Permissions."

2. On the ownCloud server machine, open a web browser and enter the following address:
   ```
   http://localhost/owncloud
   ```
3. Enter the administrator username and password.

4. Click **Storage & database**.

5. In **Data folder**, enter the absoute path to the database data directory for
   the ownCloud server (for example, /var/oc_data).

   **IMPORTANT: The ownCloud data directory must be exclusive to ownCloud and not be
   modified manually by any other process or user.** 

6. Under **Configure the database**, select **MSQL/MariaDB**.
   
7. Click **Finish setup**.

## Identify Trusted Domains

All URLs used to access your ownCloud server must be in the form of a 
whitelist in your config.php file, under the **trusted_domains** setting. 
Users can sign in to ownCloud only when they specify a URL in their web
browser that matches one listed in **trusted_domains**.

**TIP:** This setting is important when changing or moving to a new 
domain name. You may use IP addresses and domain names.

An example of a trusted_domains value resembles the following:

```
'trusted_domains' => [
   0 => 'localhost',
   1 => 'server1.example.com',
   2 => '192.168.1.50',
],
```

The loopback address, 127.0.0.1, is automatically whitelisted. Therefore, if you
have access to the server machine, you can always sign in. If your site uses a 
load-balancer, there should be no issues if the load-balancer sends the correct
X-Forwarded-Host header.

**TIP:** For further information on improving the quality of your ownCloud 
deployment, see 
[Configuration Notes & Tips](https://doc.owncloud.org/server/10.0/admin_manual/installation/configuration_notes_and_tips.html).

## Next Step: Add ownCloud Users
Go to [Step 4: Add ownCloud Users](./qs_admins_addusers.html).
