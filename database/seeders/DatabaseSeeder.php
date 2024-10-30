<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\User;
use App\Models\Post;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $personal = Category::factory()->create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        $work = Category::factory()->create([
            'name' => 'Work',
            'slug' => 'work'
        ]);
        $hobbies = Category::factory()->create([
            'name' => 'Hobbies',
            'slug' => 'hobbies'
        ]);

        $user1 = User::factory()->create();
        $user2 = User::factory()->create();
        $user3 = User::factory()->create();

        Post::factory()->create([
            'user_id' => $user1->id,
            'category_id' => $personal->id
        ]);
        Post::factory()->create([
            'user_id' => $user1->id,
            'category_id' => $work->id
        ]);
        Post::factory()->create([
            'user_id' => $user1->id,
            'category_id' => $hobbies->id
        ]);
        Post::factory()->create([
            'user_id' => $user2->id,
            'category_id' => $personal->id
        ]);
        Post::factory()->create([
            'user_id' => $user2->id,
            'category_id' => $work->id
        ]);
        Post::factory()->create([
            'user_id' => $user2->id,
            'category_id' => $hobbies->id
        ]);
        Post::factory()->create([
            'user_id' => $user3->id,
            'category_id' => $personal->id
        ]);
        Post::factory()->create([
            'user_id' => $user3->id,
            'category_id' => $work->id
        ]);
        Post::factory()->create([
            'user_id' => $user3->id,
            'category_id' => $hobbies->id
        ]);
    }
}
