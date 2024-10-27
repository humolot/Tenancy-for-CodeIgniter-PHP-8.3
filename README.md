# Tenancy for CodeIgniter PHP 8.3

## Overview

**Tenancy for CodeIgniter PHP 8.3** is a robust framework designed to empower developers with the ability to create multi-tenant applications using CodeIgniter. Updated to support PHP 8.3, this project integrates essential features such as **Tenancy Management**, **JWT Authentication**, and **Active Record (ORM)** through Laravel Eloquent. This ensures a seamless experience for developers looking to leverage the power of modern PHP while maintaining the simplicity of CodeIgniter.

## Features

- **Multi-Tenancy Support**: Easily manage multiple tenants within a single application.
- **JWT Authentication**: Secure your API endpoints with JSON Web Token (JWT) authentication, enhancing security for your applications.
- **Active Record (ORM) with Laravel Eloquent**: Utilize the elegant and powerful Active Record implementation provided by Laravel Eloquent for streamlined database interactions.

## Installation

Setting up **Tenancy for CodeIgniter PHP 8.3** is straightforward:

1. Clone the repository:

   ```bash
   git clone https://github.com/humolot/Tenancy-for-CodeIgniter-PHP-8.3.git

2. Install the dependencies via Composer:
   ```bash
   composer install
   
3.  Configuring Domains and Subdomains for SaaS
To ensure your SaaS application functions correctly, you need to point the domains and subdomains to the project using one of the following control panels: Plesk, cPanel, or aaPanel.

## Plesk
Add Domain/Subdomain:

Access your Plesk panel.
Go to "Websites & Domains".
Click on "Add Domain" or "Add Subdomain".
Enter the domain/subdomain name you want to point.
Configure DocumentRoot:

Set the DocumentRoot to the folder where the Tenancy project is located (e.g., public_html/Tenancy-for-CodeIgniter-PHP-8.3/public).
Configure DNS:

Access the DNS settings and add or modify the A/CNAME records to point to the server's IP where your project is hosted.

## cPanel
Add Domain/Subdomain:

Access your cPanel.
Go to "Domains" and select "Add Domain" or "Subdomains".
Fill in the details for the domain/subdomain you want to add.
Configure DocumentRoot:

Set the DocumentRoot to the folder where your Tenancy project is located (e.g., public_html/Tenancy-for-CodeIgniter-PHP-8.3/public).
Configure DNS:

In cPanel, go to "Zone Editor" and add or modify the A/CNAME records to point to your server's IP address.

## aaPanel
Add Domain/Subdomain:

Access your aaPanel.
Go to "Sites" and click on "Add Site".
Enter the domain/subdomain name and fill in the necessary fields.
Configure DocumentRoot:

Point the DocumentRoot to the directory of your Tenancy project (e.g., /www/wwwroot/Tenancy-for-CodeIgniter-PHP-8.3/public).
Configure DNS:

Access the DNS settings and add the A/CNAME records to direct to your server's IP.
Database Configuration
To use the multi-tenant functionality, you'll need to set up databases for your tenants. Depending on your architecture, you can choose:

Individual Database per Tenant: Create a separate database for each tenant, allowing for total data isolation.
General Database: Use a single database with a column that identifies the tenant in each table, which can be more efficient in some scenarios.
Be sure to adjust your queries and models to reflect the chosen approach.

## Conclusion
With Tenancy for CodeIgniter PHP 8.3, you are ready to build robust and scalable SaaS applications. Take advantage of multi-tenancy flexibility and JWT security while leveraging the simplicity of CodeIgniter.

