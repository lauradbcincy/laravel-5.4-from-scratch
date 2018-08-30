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

