<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_suplier'', function (Blueprint $table) {
            $table->increments('suplier'_id');
            $table->string('suplier'_nama');
            $table->string('suplier'_slug');
            $table->text('suplier'_alamat')->nullable();
            $table->string('suplier'_notelp')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tbl_suplier'');
    }
};
