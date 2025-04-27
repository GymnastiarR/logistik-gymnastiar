<?php

use App\Models\Goods;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->id();
            $table->string('number')->unique()->nullable();
            $table->string('goods_code')->nullable();
            $table->foreignId('user_id')->constrained()->onDelete('cascade');
            $table->integer('quantity')->nullable();
            $table->boolean('status');
            $table->enum('category', ['inbound', 'outbound']);
            $table->string('location')->nullable();
            $table->string('description')->nullable();
            $table->date('date')->nullable();
            $table->timestamps();

            $table->foreign('goods_code')->references('code')->on('goods')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
