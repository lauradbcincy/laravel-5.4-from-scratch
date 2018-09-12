# laravel-5.4-from-scratch
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

Podcast 1: Laravel Installation and Composer 


$ cd code
$ laravel new blog
(I did not go back and add the dev branch)

** Running "laravel new blog" created a "blog" folder under "code" (~/vagrant/laravel-5.4-from-scratch/code/blog).  I adjusted the Homestead.yaml so the sites "to" is /home/vagrant/code/blog/public, then I dropped out of vagrant's ssh and ran
$ vagrant reload --provision


Podcast 2: Basic Routing and Views 

Edit:
  code/blog/resources/views/welcome.blade.php
  code/blog/routes/web.php
  
Add:
    code/blog/resources/views/about.blade.php
    
    
Podcast 3: Laravel Valet is Your Best Friend 

Pretty much skipped this because I like vagrant




    