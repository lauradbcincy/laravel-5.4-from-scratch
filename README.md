Laravel-5.4-from-scratch
Code-a-long with Laravel 5.4 From Scratch podcast

Setup

  Create and clone repo to ~/vagrant/laravel-5.4-from-scratch

  Set up a per project Homestead vagrant box using instructions at https://laravel.com/docs/5.6/homestead#per-project-installation

  $ composer require laravel/homestead --dev
  $ php vendor/bin/homestead make

  Edit Homestead.yaml.  

  Add "alias d='ls -Flagbh'" to aliases

  Add the following to after.sh
    sudo apt-get update
    sudo apt-get install silversearcher-ag

  Create a .gitignore file with
    .vagrant
    **/vendor

  $ vagrant up
  $ vagrant ssh

Episode 1: Laravel Installation and Composer


$ cd code
$ laravel new blog
(I did not go back and add the dev branch)

** Running "laravel new blog" created a "blog" folder under "code" (~/vagrant/laravel-5.4-from-scratch/code/blog).  I adjusted the Homestead.yaml so the sites "to" is /home/vagrant/code/blog/public, then I dropped out of vagrant's ssh and ran
$ vagrant reload --provision


Episode 2: Basic Routing and Views

  Edit:
    code/blog/resources/views/welcome.blade.php
    code/blog/routes/web.php

  Add:
      code/blog/resources/views/about.blade.php


Episode 3: Laravel Valet is Your Best Friend

  Pretty much skipped this because I like vagrant


Episode 4: Database Setup and Sequel Pro

  Edit .env

  $ mysql -u root

  mysql> create database blog;

  $ php artisan migrate
  ***ERROR
  root was denied permission.
  I reverted DB_USERNAME & DB_PASSWORD but left DB_DATABASE=blog


Episode 5: Pass Data to Your Views

  Edit files specified in podcast



Episode 6: Working With the Query Builder

  $ php artisan make:migration create_tasks_table
  $ rm database/migrations/2018_08_30_205405_create_tasks_table.php
  $ php artisan make:migration create_tasks_table --create=tasks
  ** No error, unlike the podcast
  $ php artisan migrate

  (Installed the JSON Formatter extension in Chrome.  It is really nice.)


Episode 7: Eloquent 101


Episode 8: Controllers


Episode 9: Route Model Binding


Episode 10: Layouts and Structure


Episode 11: Form Request Data and CSRF

  The link to the Blog example is: https://v4-alpha.getbootstrap.com/examples/blog/

  Styling on the submit button is off.  Apparently there's an issue with the Bootstrap css but it doesn't matter at this point.

  I added the debug bar during this episode.


Episode 12: Form Validation 101


Episode 13: Rendering Posts
