<?php

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
        Schema::create('thong_kes', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('so_luong_san_pham')->default(0); // Số lượng sản phẩm
            $table->unsignedInteger('so_luong_don_hang')->default(0); // Số lượng đơn hàng
            $table->unsignedInteger('so_luong_tai_khoan')->default(0); // Số lượng tài khoản
            $table->unsignedInteger('so_luong_danh_muc')->default(0); // Số lượng danh mục
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('thong_kes');
    }
};
