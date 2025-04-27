<?php

namespace App\Models;

use App\Enums\TransactionCategory;
use App\Enums\TransactionStatus;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'number',
        'goods_code',
        'user_id',
        'quantity',
        'status',
        'category',
        'description',
        'location',
        'date'
    ];

    protected $casts = [
        'status' => 'boolean',
        // 'category' => 'string',
    ];

    public function goods()
    {
        return $this->belongsTo(Goods::class, 'goods_code', 'code')->withTrashed();
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    protected static function boot()
    {
        parent::boot();

        static::saving(function (Transaction $transaction) {
            if (empty($transaction->number) && $transaction->status == TransactionStatus::SAVED->value) {
                $transaction->number = self::generateTransactionCode($transaction);
            }
        });
    }

    protected static function generateTransactionCode(Transaction $transaction): string
    {
        return $transaction->category == TransactionCategory::INBOUND->value
            ? 'IN-' . strtoupper(uniqid())
            : 'OUT-' . strtoupper(uniqid());
    }

    public function scopeFilter($query, array $filters)
    {
        $query->when($filters['search'] ?? false, function ($query, $search) {
            $query->where('transaction_code', 'like', '%' . $search . '%')
                ->orWhereHas('goods', function ($query) use ($search) {
                    $query->where('name', 'like', '%' . $search . '%');
                });
        });
    }
    public function scopeFilterByDate($query, $startDate, $endDate)
    {
        return $query->whereBetween('created_at', [$startDate, $endDate]);
    }
    public function scopeFilterByCategory($query, $category)
    {
        return $query->where('category', $category);
    }
    public function scopeFilterByStatus($query, $status)
    {
        return $query->where('status', $status);
    }
    public function scopeFilterByUser($query, $userId)
    {
        return $query->where('user_id', $userId);
    }
    public function scopeFilterByGoods($query, $goodsId)
    {
        return $query->where('goods_id', $goodsId);
    }

    public function scopeFilterByQuantity($query, $quantity)
    {
        return $query->where('quantity', $quantity);
    }
    public function scopeFilterByDescription($query, $description)
    {
        return $query->where('description', 'like', '%' . $description . '%');
    }
    public function scopeFilterByCreatedAt($query, $createdAt)
    {
        return $query->whereDate('created_at', $createdAt);
    }
    public function scopeFilterByUpdatedAt($query, $updatedAt)
    {
        return $query->whereDate('updated_at', $updatedAt);
    }
    public function scopeFilterByTransactionId($query, $transactionId)
    {
        return $query->where('id', $transactionId);
    }
    public function scopeFilterByTransactionCode($query, $transactionCode)
    {
        return $query->where('transaction_code', 'like', '%' . $transactionCode . '%');
    }
    public function scopeFilterByTransactionStatus($query, $transactionStatus)
    {
        return $query->where('status', $transactionStatus);
    }
    public function scopeFilterByTransactionCategory($query, $transactionCategory)
    {
        return $query->where('category', $transactionCategory);
    }
    public function scopeFilterByTransactionDescription($query, $transactionDescription)
    {
        return $query->where('description', 'like', '%' . $transactionDescription . '%');
    }
    public function scopeFilterByTransactionCreatedAt($query, $transactionCreatedAt)
    {
        return $query->whereDate('created_at', $transactionCreatedAt);
    }
    public function scopeFilterByTransactionUpdatedAt($query, $transactionUpdatedAt)
    {
        return $query->whereDate('updated_at', $transactionUpdatedAt);
    }
    public function scopeFilterByTransactionUser($query, $transactionUserId)
    {
        return $query->where('user_id', $transactionUserId);
    }
    public function scopeFilterByTransactionGoods($query, $transactionGoodsId)
    {
        return $query->where('goods_id', $transactionGoodsId);
    }
    public function scopeFilterByTransactionQuantity($query, $transactionQuantity)
    {
        return $query->where('quantity', $transactionQuantity);
    }
}
