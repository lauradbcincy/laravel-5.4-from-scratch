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


Episode 14: Laravel Mix and the Front-end

  Covers node & npm and compiling SASS files.

  Take away: run "npm run dev" to compile sass.  See also other commands in the package.json file's "scripts" section (like "npm run watch" and "npm run watch-poll")


Episode 15: Eloquent Relationships and Comments


Episode 16: Add Comments


Episode 17: Rapid Authentication and Configuration

  So that I use the example site, I ran "laravel new example" in the vagrant ~/code directory, then on the host machine edited Homstead.yaml and /etc/hosts then ran "vagrant reload --provision"

Episode 18: Associating With Users

  Switching back to the blog site because he's using MySQL
  $user->password = bycrypt('whatever')


Episode 19: Associating With Users: Part 2

  There are some problems with the code in the podcast.  The comments reflect this issue, so it's not all me.

  The first problem is he never calls bcrypt for the password.

  The second issue was the redirects to "/home".  There's a way to change the default redirect in the authenticator (see "Path Customization" at https://laravel.com/docs/5.7/authentication#included-authenticating) For this use case, I just did "Route::redirect('/home', '/');" in web.php


Episode 20: Archives

  I did have to use isset() in the filter at the end of the podcast so there is deviance from his code.


Episode 21: View Composers

  I split my sidebar layouts up more than the example, so the view composer is listening for 'layouts.sidebar.archives'


Episode 22: Testing 101
