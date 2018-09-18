<?php

namespace Tests\Unit;

use Tests\TestCase;
//use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;

use \App\Post;

class ExampleTest extends TestCase
{
    use DatabaseTransactions;

    public function testBasicTest()
    {
        // Given - there are 2 posts in the database created
        // 1 month apart
        $first  = factory(Post::class)->create();
        $second = factory(Post::class)->create([
          'created_at' => \Carbon\Carbon::now()->subMonth(),
        ]);

        // When - we fetch the archives
        $posts = Post::archives();

        // Then - we expect an array of 2 elements
        $this->assertEquals([
          [
            'year'      => $first->created_at->format('Y'),
            'month'     => $first->created_at->format('F'),
            'published' => 1
          ],
          [
            'year'      => $second->created_at->format('Y'),
            'month'     => $second->created_at->format('F'),
            'published' => 1
          ]
        ], $posts);
    }
}
