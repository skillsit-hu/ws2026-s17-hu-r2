# Modules Overview

**WorldSkills Shanghai 2026 Hungarian National Competition, Web Technologies - Round 2**

Submitted by: [Skills IT](https://skillsit.hu)

You've been working as a **freelance web developer**, but now you're aiming to secure a developer position at a promising new startup in Hungary: **Sudsy**. You have already **successfully completed** the first round of the hiring process, and you have been selected from over 100 candidates for the second round, where only the **top six** candidates remain.

In this round, you have **three different tasks**. First, you will need to create a backend with multiple **REST API** endpoints to serve Sudsy's **front-end** applications. Then you will develop an admin application that will be used by the employees. Finally, you will develop a new version of the showcase website.

Descriptions of the three tasks:

- [Module A - Backend](module-a.md)
- [Module B - Admin](module-b.md)
- [Module C - Design and frontend](module-c.md)

## Technical Environment

You can solve the tasks by developing them on your own machine.

### Gitea, git

For all three tasks, you can start with a selected template repo available on Gitea.

The available template repos:

- react-app
- react-ts-app
- vue-app
- vue-ts-app
- node-app
- node-ts-app
- laravel-app
- vanilla-js-app

The Gitea service is available at the following address:
[https://gitea.sudsy.com](https://gitea.sudsy.com)

To log in, you must use the username (competitor-Y) and password (a 4-digit PIN code) you have been given.  
After logging in, create a new repo for the task.

- In the Owner field, select `competitors` team! **Make sure you set this option carefully because if you set your own user as the owner, the automatic deployment will not work!**
- Give the name of the new repo using the following pattern: `module-X-Y`, where `X` is the module number, and `Y` is your workstation number. **Make sure you set the repo's name carefully because if you make a mistake, the automatic deployment will not work!**
- Under the template field, select the appropriate template (e.g. `react-ts-app`). Select `Git Content (Default Branch)` for `Template Items`.

Once the new repo is created, clone it to your own workstation inside the `d:\ws2026-s17-hu-r2` folder.

### Using npm modules

The npm modules will be accessible via a local npm cache. This means that even though there will be no internet access to the machines, you will be able to install the available npm modules to the projects as usual, and the `npm install` command issued on the cloned template projects will install all the npm modules needed for your project.

The available npm modules:

- express
- mysql
- mysql2
- vue-router
- react-router
- react-router-dom
- axios
- sass
- tailwindcss
- _and all the types (@types/) needed for the TS projects_

### Laravel projects, composer install

The Laravel project contains all the necessary files, so you will **not** need to `composer install`. Your workstation has PHP 8 installed, so you can use the `php artisan` commands in the Laravel project.

### Deployment

When you commit and push your work, the deployment will start automatically. You can follow the process in the Gitea interface under the Action tab. Once the deployment is complete, your project will be available at https://module-X-Y.sudsy.com, where `X` is the module number and `Y` is your workstation number.

### Database access

You will have your own database on the MySQL database server (`db.sudsy.com`) available on the local network. You will need to use this database for development, and the same database will provide the data for your projects deployed to the server. A database dump will be provided to get the initial data. During the marking, the database will be restored to its original state using the same dump.
