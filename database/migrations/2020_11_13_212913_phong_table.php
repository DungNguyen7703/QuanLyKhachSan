<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class PhongTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('phong', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('loaiphong_id')->unsigned();
            $table->string('tenphong');
            $table->boolean('trangthai')->nullable();
            $table->text('chuthich')->nullable();
            $table->integer('user_id')->unsigned();
            $table->integer('soluong')->default(0);
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
        Schema::dropIfExists('phong');
    }
}
