@extends('layouts.master')

@section('content')

  <h1>Sign In</h1>

  <form method="POST" action="/login">
    {{ csrf_field() }}

    <div class="form-group">
      <label for="name">Email</label>
      <input type="email" class="form-control" name="email" id="email" required/>
    </div>

    <div class="form-group">
      <label for="name">Password</label>
      <input type="password" class="form-control" name="password" id="password" required/>
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-primary">Log In</button>
    </div>

  </form>

  @include('layouts.errors')


@endsection
