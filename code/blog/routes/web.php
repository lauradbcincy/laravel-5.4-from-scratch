<?php

App::singleton('App\Billing\Stripe', function () {
  return new \App\Billing\Stripe(config('services.stripe.secret'));
});


// resolve() and also app() are aliases for App::make
dd(resolve('App\Billing\Stripe'));


Route::get('/', 'PostsController@index')->name('home');

Route::redirect('/home', '/');

Route::post('/posts', 'PostsController@store');
Route::get('/posts/create', 'PostsController@create');
Route::get('/posts/{post}', 'PostsController@show');
Route::post('/posts/{post}/comments', 'CommentsController@store');

Route::get('/register', 'RegistrationController@create');
Route::post('/register', 'RegistrationController@store');

Route::get('/login', 'SessionController@create');
Route::post('/login', 'SessionController@store');
Route::get('/logout', 'SessionController@destroy');
