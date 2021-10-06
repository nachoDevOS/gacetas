<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePublicationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('publications', function (Blueprint $table) {
            $table->id();
            $table->foreignId('publications_type_id')->nullable()->constrained('publications_types');
            $table->foreignId('user_id')->nullable()->constrained('users');
            $table->string('title')->nullable();
            $table->text('description')->nullable();
            $table->date('publish_date')->nullable();
            $table->date('enact_date')->nullable();
            $table->string('file')->nullable();
            $table->integer('highlight')->nullable()->default(1);
            $table->integer('view')->nullable()->default(0);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('publications');
    }
}
