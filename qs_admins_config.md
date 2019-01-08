---
layout: default-admin
title: Step 3: Server Post-Installation Configuration
---

# Step 3: Server Post-Installation Configuration
**IMPORTANT: For quickstart purposes, the ownCloud server is unsecured using 
the default Apache HTTP port, 8080. If you want to secure your server, see 
[Enable SSL](https://doc.owncloud.org/server/administration_manual/installation/manual_installation.html#enable-ssl).**

You must perform the following configuration after installing the ownCloud server:
* Configure Apache web server
* Establish the administrator credentials
* Specify the database type and data location
* Set strong directory permissions
* Identify trusted domains

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
  **TIP:**If you want to use the OAuth2 app, then mod_headers must be 
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
  Apache prefork has to be used. Don’t use a threaded **MPM** like **event** 
  or **worker** with **mod_php**, because PHP is currently 
  [not thread safe](https://secure.php.net/manual/en/install.unix.apache2.php).


## Establish the Administrator Credentials

## Specify the Database type and Data Location

## Set Strong Directory Permissions

## Identify Trusted Domains

## Next Step: Add ownCloud Users
Go to [Step 4: Add ownCloud Users](./qs_admins_addusers.html).
