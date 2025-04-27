<?php

namespace App\Http\Controllers;

use App\Enums\TransactionCategory;
use App\Enums\TransactionStatus;
use App\Http\Requests\TransactionRequest;
use App\Http\Requests\UpdateInboundRequest;
use App\Models\Goods;
use App\Models\Transaction;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\DB;

class InboundController extends Controller
{
    function index(): View
    {
        $transactionsQuery = Transaction::query()->with('goods')->where('category', TransactionCategory::INBOUND);

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

        $transactions = $transactionsQuery->orderBy('created_at', 'desc')->paginate(15);

        return view('transaction.inbound', [
            'transactions' => $transactions,
            'goods' => Goods::all(),
        ]);
    }

    function store(TransactionRequest $request): RedirectResponse
    {
        $validatedData = $request->validated();

        $validatedData['user_id'] = auth()->user()->id;
        $validatedData['category'] = TransactionCategory::INBOUND->value;

        if ($validatedData['status'] == TransactionStatus::SAVED->value) {
            DB::transaction(function () use ($validatedData) {
                Goods::where('code', $validatedData['goods_code'])
                    ->increment('stock', $validatedData['quantity']);

                Transaction::create($validatedData);
            });

            return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan inbound');
        }

        Transaction::create($validatedData);

        return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan inbound sebagai draft');
    }

    function update(UpdateInboundRequest $request, Transaction $transaction): RedirectResponse
    {
        $validatedData = $request->validated();

        $validatedData['user_id'] = auth()->user()->id;
        $validatedData['category'] = TransactionCategory::INBOUND->value;

        if ($validatedData['status'] == TransactionStatus::SAVED->value) {
            DB::transaction(function () use ($validatedData, $transaction) {
                // Update the goods quantity
                Goods::where('code', $validatedData['goods_code'])
                    ->increment('stock', $validatedData['quantity']);

                $transaction->update($validatedData);
            });

            return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan inbound');
        }

        $transaction->update($validatedData);

        return redirect()->route('outbound.index')->with('success', 'Berhasil menyimpan inbound sebagai draft');
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
