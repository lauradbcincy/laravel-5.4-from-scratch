
@extends('layouts.master')

@section('content')

  <h1>{{ $post->title }}</h1>

  <p class="blog-post-meta">{{ $post->created_at->toFormattedDateString() }}</p>

  {{ $post->body }}


@endsection
