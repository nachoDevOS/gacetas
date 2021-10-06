<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class PublicationsTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('publications')->delete();
        
        \DB::table('publications')->insert(array (
            0 => 
            array (
                'id' => 1,
                'publications_type_id' => 1,
                'user_id' => NULL,
                'title' => 'Ley de prueba',
                'description' => NULL,
                'publish_date' => '2021-10-06',
                'enact_date' => '2021-10-06',
                'file' => '[{"download_link":"publications\\/October2021\\/BfjVWN5PCvbi7f8rLv4V.xlsx","original_name":"users.xlsx"}]',
                'highlight' => 0,
                'view' => 0,
                'created_at' => '2021-10-06 15:33:07',
                'updated_at' => '2021-10-06 15:33:07',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}