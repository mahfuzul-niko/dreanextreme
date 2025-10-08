<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddLogoColorHeadBodyColumnsToSettings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->longText('logo_color')->default('#ed3833')->after('address');
            $table->longText('head')->nullable()->after('logo_color');
            $table->longText('body')->nullable()->after('head');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('settings', function (Blueprint $table) {
            $table->dropColumn('logo_color');
            $table->dropColumn('head');
            $table->dropColumn('body');
        });
    }
}
