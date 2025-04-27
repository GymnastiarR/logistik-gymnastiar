<?php

namespace App\Http\Controllers;

use App\Enums\TransactionCategory;
use App\Enums\TransactionStatus;
use App\Http\Requests\TransactionRequest;
use App\Models\Goods;
use App\Models\Transaction;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OutboundController extends Controller
{
    function index(): View
    {
        $transactionsQuery = Transaction::query()->with('goods')->where('category', TransactionCategory::OUTBOUND->value);

        if (request('status') == '1' || request('status') == '0') {
            $transactionsQuery->where('status', \request('status'));
        }

        if (\request('goods_code')) {
            $transactionsQuery->where('goods_code', \request('goods_code'));
        }

        if (\request('date')) {
            $transactionsQuery->whereDate('date', \request('date'));
        }

        if (\request('location')) {
            $transactionsQuery->where('location', 'like', '%' . \request('location') . '%');
        }

        if (\request('number')) {
            $transactionsQuery->where('number', 'like', '%' . \request('number') . '%');
        }


        $trasactions = $transactionsQuery->orderBy('created_at', 'desc')->paginate(15);

        return view('transaction.outbound', [
            'transactions' => $trasactions,
            'goods' => Goods::all(),
        ]);
    }

    function store(TransactionRequest $request): RedirectResponse
    {
        $validatedData = $request->validated();

        $validatedData['user_id'] = auth()->user()->id;
        $validatedData['category'] = TransactionCategory::OUTBOUND->value;

        $goods = Goods::where('code', $validatedData['goods_code'])->first();

        if ($validatedData['status'] == TransactionStatus::SAVED->value && $goods->stock < $validatedData['quantity']) {
            return redirect()->back()->with('error', 'Stock barang tidak mencukupi.');
        }

        if ($validatedData['status'] == TransactionStatus::SAVED->value) {
            DB::transaction(function () use ($validatedData, $goods) {
                $goods->decrement('stock', $validatedData['quantity']);

                Transaction::create($validatedData);
            });

            return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan outbound');
        }

        Transaction::create($validatedData);

        return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan outbound sebagai draft');
    }

    function update(TransactionRequest $request, Transaction $transaction): RedirectResponse
    {
        $validatedData = $request->validated();

        $validatedData['user_id'] = auth()->user()->id;

        $goods = Goods::where('code', $validatedData['goods_code'])->first();
        $validatedData['category'] = TransactionCategory::OUTBOUND->value;

        if ($validatedData['status'] == TransactionStatus::SAVED && $goods->stock < $validatedData['quantity']) {
            return redirect()->back()->with('error', 'Stock barang tidak mencukupi.');
        }

        if ($validatedData['status'] == TransactionStatus::SAVED) {
            DB::transaction(function () use ($validatedData, $goods, $transaction) {
                $goods->decrement('stock', $validatedData['quantity']);

                $transaction->update($validatedData);
            });

            return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan outbound');
        }

        $transaction->update($validatedData);

        return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan outbound sebagai draft');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Transaction $transaction)
    {
        if ($transaction->status == TransactionStatus::SAVED->value) {
            return redirect()->back()->with('error', 'Transaction cannot be deleted because it is already saved.');
        }

        $transaction->delete();

        return redirect()->back()->with('success', 'Transaction deleted successfully.');
    }
}
