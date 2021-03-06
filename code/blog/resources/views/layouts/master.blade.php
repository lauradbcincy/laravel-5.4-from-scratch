<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Blog</title>

    <link href="/css/app.css" rel="stylesheet">
    <link href="/css/blog.css" rel="stylesheet">
</head>

<body>

    @include('layouts.nav')

    @if ( $flash = session('message'))

        <div id="flash-message" class="alert alert-success" role="alert">
          {{ $flash }}
        </div>

    @endif

    <div class="container">

        <div class="row">

            <div class="col-sm-8 blog-main">

                @yield('content')

            </div><!-- /.blog-main -->

            @include('layouts.sidebar.master')

        </div><!-- /.row -->

    </div><!-- /.container -->

    @include('layouts.footer')

</body>

</html>
