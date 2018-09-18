<?php

namespace App;

use \App\Comment;

use Carbon\Carbon;

class Post extends Model
{
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function addComment($body)
    {
        $this->comments()->create(compact('body'));
    }

    public function scopeFilter($query, $filters)
    {
      if ( isset($filters['month']) && $month = $filters['month'] )
      {
        $query->whereMonth('created_at', Carbon::parse($month)->month);
      }

      if ( isset($filters['year']) && $year = $filters['year'] )
      {
        // dd(Carbon::parse($month)->month);
        // $posts->whereMonth('created_at', Carbon::parse($month)->month);
        $query->whereYear('created_at', $year);
      }


    }
}
