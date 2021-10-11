<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class FrequentQuestionsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('frequent_questions')->delete();
        
        \DB::table('frequent_questions')->insert(array (
            0 => 
            array (
                'id' => 1,
                'title' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'tags' => NULL,
                'description' => '<p><span style="color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>',
                'created_at' => '2021-10-11 15:14:02',
                'updated_at' => '2021-10-11 15:14:02',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'title' => 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                'tags' => NULL,
                'description' => '<p><span style="color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.&nbsp;</span></p>',
                'created_at' => '2021-10-11 15:14:28',
                'updated_at' => '2021-10-11 15:14:28',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}