<?php
  namespace App\Repositories;

  use App\Post;
  use App\Redis;

  class Posts
  {

    protected $redis;

    public function __constructor(Redis $redis)
    {
      $this->redis = $redis;
    }

    public function all()
    {
      return Post::all();
    }

  }
