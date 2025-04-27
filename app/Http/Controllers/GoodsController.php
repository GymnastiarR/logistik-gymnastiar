<?php

namespace App\Http\Controllers;

use App\Models\Goods;
use App\Http\Requests\StoreGoodsRequest;
use App\Http\Requests\UpdateGoodsRequest;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;

class GoodsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $goodsQuery = Goods::query();
        if (request('code')) {
            $goodsQuery->where('code', 'like', '%' . request('code') . '%');
        }

        if (request('name')) {
            $goodsQuery->where('name', 'like', '%' . request('name') . '%');
        }

        $goods = $goodsQuery->orderBy('created_at', 'desc')->paginate(15);

        return view('goods.index', compact('goods'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreGoodsRequest $request): RedirectResponse
    {
        $validatedData = $request->validated();

        Goods::create($validatedData);

        return \redirect()->back()->with('success', 'Goods created successfully.');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Goods $goods)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateGoodsRequest $request, Goods $goods)
    {
        $validatedData = $request->safe()->except(['code', 'stock']);

        $goods->update($validatedData);

        return redirect()->back()->with('success', 'Goods updated successfully.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Goods $goods): RedirectResponse
    {
        $goods->delete();

        return redirect()->back()->with('success', 'Goods deleted successfully.');
    }
}
