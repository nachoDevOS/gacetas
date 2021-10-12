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
                'description' => 'Son normas jurídicas de carácter general y de cumplimiento obligatorio en la jurisdicción del Departamento del Beni, que son sancionadas por la Asamblea Legislativa Departamental y promulgadas por la Gobernadora o Gobernador del Departamento.',
                'created_at' => '2021-10-06 12:49:29',
                'updated_at' => '2021-10-11 21:20:43',
                'deleted_at' => NULL,
            ),
            1 => 
            array (
                'id' => 2,
                'title' => 'Decretos',
                'slug' => 'decretos',
                'icon' => 'book',
                'image' => NULL,
                'description' => 'Serán firmados por la Gobernadora o el Gobernador o conjuntamente con las Secretarias o Secretarios cuando emerjan de decisiones adoptadas en Gabinete y para aprobación de reglamentación a leyes departamentales.',
                'created_at' => '2021-10-06 14:53:00',
                'updated_at' => '2021-10-11 21:22:15',
                'deleted_at' => NULL,
            ),
            2 => 
            array (
                'id' => 3,
                'title' => 'Resolución',
                'slug' => 'resolucion',
                'icon' => 'newspaper',
                'image' => NULL,
                'description' => 'Otorgación de reconocimientos a personas naturales o jurídicas, aprobación de reglamentos específicos, reglamentos internos y manuales, designación de Directoras o Directores de Servicios Desconcentrados o Direcciones Desconcentradas, personerías jurídicas y otros.',
                'created_at' => '2021-10-06 14:54:42',
                'updated_at' => '2021-10-11 21:23:38',
                'deleted_at' => NULL,
            ),
            3 => 
            array (
                'id' => 4,
                'title' => 'Designación',
                'slug' => 'designacion',
                'icon' => 'chat-left-text',
                'image' => NULL,
                'description' => 'Firmadas por el Secretario o Secretaria Departamental sobre asuntos sometidos a sus funciones y atribuciones.',
                'created_at' => '2021-10-06 14:56:06',
                'updated_at' => '2021-10-11 21:23:03',
                'deleted_at' => NULL,
            ),
        ));
        
        
    }
}