<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PublicationsTypesTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('publications_types')->delete();
        
        \DB::table('publications_types')->insert(array (
            0 => 
            array (
                'id' => 1,
                'title' => 'Leyes',
                'slug' => 'leyes',
                'icon' => 'journal-bookmark',
                'image' => NULL,
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                'created_at' => '2021-10-06 12:49:29',
                'updated_at' => '2021-10-06 15:02:18',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'title' => 'Decretos',
                'slug' => 'decretos',
                'icon' => 'book',
                'image' => NULL,
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam',
                'created_at' => '2021-10-06 14:53:00',
                'updated_at' => '2021-10-06 15:02:51',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'title' => 'Resolución',
                'slug' => 'resolucion',
                'icon' => 'newspaper',
                'image' => NULL,
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                'created_at' => '2021-10-06 14:54:42',
                'updated_at' => '2021-10-06 15:02:43',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'title' => 'Designación',
                'slug' => 'designacion',
                'icon' => 'chat-left-text-fill',
                'image' => NULL,
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                'created_at' => '2021-10-06 14:56:06',
                'updated_at' => '2021-10-06 15:02:33',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}