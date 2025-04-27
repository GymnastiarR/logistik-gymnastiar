<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUlids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Goods extends Model
{
    use HasFactory, HasUlids, SoftDeletes;

    protected $fillable = [
        'code',
        'name',
        'stock',
        'unit',
        'description',
    ];

    public static function booted()
    {
        static::saving(function (Goods $model) {
            if (empty($model->code)) {
                $model->code = \rand(100000, 999999);
            }
        });

        static::deleting(function ($goods) {
            if ($goods->isForceDeleting()) {
                // Kalau force delete, skip dulu
                return;
            }

            Transaction::where('goods_code', $goods->code)
                ->where('status', 0) // hanya yang masih draft
                ->update(['goods_code' => null]);
        });
    }

    public function transactions()
    {
        return $this->hasMany(Transaction::class, 'goods_code', 'code');
    }
}
