<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class OfficialsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('officials')->delete();
        
        \DB::table('officials')->insert(array (
            0 => 
            array (
                'id' => 1,
                'full_name' => 'John Doe',
                'job' => 'Developer',
                'image' => NULL,
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'created_at' => '2021-10-11 15:09:48',
                'updated_at' => '2021-10-11 15:13:03',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'full_name' => 'Erick Smith',
                'job' => 'CEO',
                'image' => NULL,
                'description' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'created_at' => '2021-10-11 15:13:18',
                'updated_at' => '2021-10-11 15:13:18',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}