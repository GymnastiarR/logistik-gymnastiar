<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class TransactionRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'number' => 'nullable|string|min:3|max:255|unique:transactions,number',
            'goods_code' => 'nullable|required_if:status,1|exists:goods,code',
            'quantity' => 'nullable|required_if:status,1|integer|min:1',
            'status' => 'required|boolean',
            'location' => 'nullable|required_if:status,1|string',
            'date' => 'nullable|required_if:status,1|date',
            'description' => 'nullable|string|max:255',
        ];
    }

    public function attributes(): array
    {
        return [
            'number' => 'Nomor Transaksi',
            'goods_code' => 'Kode Barang',
            'quantity' => 'Jumlah',
            'status' => 'Status',
            'location' => 'Lokasi',
            'date' => 'Asal Barang',
            'description' => 'Deskripsi',
        ];
    }

    public function messages(): array
    {
        return [
            'number.unique' => 'Nomor Barang Masuk sudah ada.',
            'goods_code.required_if' => 'Kode barang harus diisi',
            'quantity.required_if' => 'Jumlah harus diisi',
            'location.required_if' => 'Lokasi harus diisi',
            'date.required_if' => 'Asal barang harus diisi',
        ];
    }

    /**
     * Handle a failed validation attempt.
     *
     * @param  \Illuminate\Contracts\Validation\Validator  $validator
     * @return void
     */
    protected function failedValidation(Validator $validator)
    {
        // Redirect ke route tertentu dengan membawa error dan input
        throw new HttpResponseException(
            redirect()
                ->back() // Ganti dengan route yang diinginkan
                ->withErrors($validator)
                ->withInput()
                ->with('modal', '#newTransactionModal')
        );
    }
}
