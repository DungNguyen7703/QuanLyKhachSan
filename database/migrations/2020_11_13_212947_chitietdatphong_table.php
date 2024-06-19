<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChitietdatphongTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('chitietdp', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('datphong_id')->unsigned();
            $table->integer('loaiphong_id')->unsigned();
            $table->integer('sophong')->default(0);
            $table->string('tenphong');
            $table->string('tenloaiphong');
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
        //
        Schema::dropIfExists('chitietdp');
    }
}
