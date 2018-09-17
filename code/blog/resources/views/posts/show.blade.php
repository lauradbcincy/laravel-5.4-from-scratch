@extends('layouts.master')

@section('content')

<h1>{{ $post->title }}</h1>

<p class="blog-post-meta">
    {{ $post->user->name }} on 
    {{ $post->created_at->toFormattedDateString() }}
</p>

{{ $post->body }}

<hr />

<div class="comments">

    <ul class="list-group">

        @foreach  ($post->comments as $comment)

        <li class="list-group-item">

            <strong>
              {{ $comment->created_at->diffForHumans()}}: &nbsp;
            </strong>

            {{ $comment->body }}

        </li>

        @endforeach

    </ul>

</div>

<hr/>

<div class="card">
  <div class="card-block">
    <form method="POST" action="/posts/{{$post->id}}/comments">
      <div class="form-group">
        <textarea name="body" placeholder="Your comment" class="form-control" required></textarea>
      </div>

      <div class="form-group">
        {{ csrf_field() }}
        <button type="submit" class="btn btn-primary">Add Comment</button>
      </div>

    </form>
    @include('layouts.errors')
  </div>
</div>



@endsection
