<x-app-layout>
    <x-slot:page_name>
        Daftar Barang Keluar
    </x-slot:page_name>
    @session('modal')
        @push('trigger-modal')
            <script>
                $(document).ready(function() {
                    $('{{ $value }}').modal('show');
                });
            </script>
        @endpush
    @endsession
    <div x-data="{ selectedTransaction: {}, url: '{{ route('outbound.index') }}' }">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <button type="button" class="btn btn-primary d-flex align-items-center" data-bs-toggle="modal"
                    data-bs-target="#newTransactionModal">
                    <x-icons.add />
                    <span style="padding-left: 4px;">
                        Outbound Barang
                    </span>
                </button>
                <form class="gap-2 d-flex justify-content-end" role="search">
                    <select name="status" class="form-select" aria-label="Default select example"
                        style="width: 180px;">
                        <option selected>Status</option>
                        <option @selected(request('status') == '0') value="0">Draft</option>
                        <option @selected(request('status') == '1') value="1">Saved</option>
                    </select>
                    <select name="goods_code" class="form-select" aria-label="Default select example"
                        style="width: 220px;">
                        <option selected value="">Pilih Barang</option>
                        @foreach ($goods as $item)
                            <option @selected(request('goods_code') == $item->code) value="{{ $item->code }}">{{ $item->name }}
                                ({{ $item->code }})
                            </option>
                        @endforeach
                    </select>
                    <input style="width: 140px;" value="{{ request('location') }}" name="location"
                        class="form-control md-2" type="search" placeholder="Asal Barang" aria-label="Search">
                    <input style="width: 140px;" value="{{ request('number') }}" name="number"
                        class="form-control md-2" type="search" placeholder="No Brng Keluar" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    <a class="btn btn-outline-success" href="{{ route('outbound.index') }}">Reset</a>
                </form>
            </div>
        </nav>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">No Brng Keluar</th>
                    <th scope="col">Tgl Keluar</th>
                    <th scope="col">Barang</th>
                    <th scope="col">Asal Barang</th>
                    <th scope="col">Kuantitas</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($transactions as $transaction)
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $transaction->number }}</td>
                        <td>{{ $transaction->date }}</td>
                        <td>
                            @if ($transaction->goods)
                                {{ $transaction->goods->name }} ({{ $transaction->goods_code }})
                            @endif
                        </td>
                        <td>{{ $transaction->location }}</td>
                        <td>{{ $transaction->quantity }}</td>
                        <td>
                            @if ($transaction->status == 0)
                                <span class="badge text-bg-primary">Draft</span>
                            @else
                                <span class="badge text-bg-success">Saved</span>
                            @endif
                        </td>
                        <td>
                            @if ($transaction->status == 0)
                                <button style="background-color: transparent; border: none;" data-bs-toggle="modal"
                                    data-bs-target="#updateItemModal" type="button"
                                    x-on:click="() => {selectedTransaction = {{ json_encode($transaction) }};}">
                                    <x-icons.delete />
                                </button>
                                <button style="background-color: transparent; border: none;" data-bs-toggle="modal"
                                    data-bs-target="#updateItemModal" type="button"
                                    x-on:click="() => {selectedTransaction = {{ json_encode($transaction) }};}">
                                    <x-icons.edit />
                                </button>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <div class="mx-auto">
            {{ $transactions->withQueryString()->links('pagination::bootstrap-5') }}
        </div>
        {{-- Update --}}
        <div x-init="() => {
            transaction.id = `{{ session()->has('transaction_id') ? session()->get('transaction_id') : '' }}`
            $watch('selectedTransaction', value => transaction = selectedTransaction);
            $watch('transaction', value => {
                if (value.goods_code) {
                    selectedGoods = {{ json_encode($goods) }}.find((item) => item.code == value.goods_code)
                }
            });
            @if(session()->has('modal') && session('modal') == '#updateItemModal')
            errors.number = {{ json_encode($errors->get('number')) }};
            errors.goods_code = {{ json_encode($errors->get('goods_code')) }};
            errors.quantity = {{ json_encode($errors->get('quantity')) }};
            errors.location = {{ json_encode($errors->get('location')) }};
            errors.date = {{ json_encode($errors->get('date')) }};
            errors.description = {{ json_encode($errors->get('description')) }};
            @endif
        }" x-data="{
            selectedGoods: {},
            errors: {
                number: [],
                goods_code: [],
                quantity: [],
                location: [],
                date: [],
                description: [],
            },
            number: false,
            transaction: @if(session()->has('modal') && session('modal') == '#updateItemModal')
            {{ json_encode(old()) }}
            @else {}
            @endif
        
        }">
            <div class="modal fade" id="update-confirmation-modal" tabindex="-1"
                aria-labelledby="updateConfirmationModal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            Pastikan Data Sesuai
                        </div>
                        <div class="modal-body">
                            <p>
                                No Barang Keluar :
                                <template x-if="transaction.number != null">
                                    <span x-text="transaction.number"></span>
                                </template>
                                <template x-if="transaction.number == null">
                                    <span>(Nomor Otomatis)</span>
                                </template>
                            </p>
                            <p>Barang : <span x-text="selectedGoods.name + ' (' + selectedGoods.code + ') '"></span></p>
                            <p>Kuantitas : <span x-text="transaction.quantity"></span></p>
                            <p>Asal Barang : <span x-text="transaction.location"></span></p>
                            <p>Tanggal Keluar : <span x-text="transaction.date"></span></p>
                            <p>Deskripsi : <span x-text="transaction.description"></span></p>
                            <div class="alert alert-warning" role="alert">
                                Peringatan! Barang keluar yang sudah disimpan tidak dapat diubah dan dihapus. Gunakan
                                draft untuk menyimpan sementara.
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#updateItemModal"
                                class="btn btn-secondary">
                                Batalkan
                            </button>
                            <button
                                x-on:click="() => {
                                    $refs.update_form.submit();
                                }"
                                type="button" class="btn btn-primary">
                                Ya, Simpan Outbound
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="updateItemModal" tabindex="-1" aria-labelledby="updateItemModal"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <form x-ref="update_form" method="POST" x-bind:action="url + '/' + selectedTransaction.id"
                        class="modal-content">
                        @csrf
                        @method('PUT')
                        <input x-ref="status" name="status" id="status" type="hidden" readonly>
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Catat Barang Keluar</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3 input-group">
                                <span class="input-group-text">
                                    <div class="form-check form-switch">
                                        <input x-model="number" class="form-check-input" type="checkbox"
                                            role="switch" id="number-toggle" checked>
                                        <label class="form-check-label" for="number-toggle">Custom Nomor Barang
                                            Keluar</label>
                                    </div>
                                </span>
                                <input x-model="transaction.number"
                                    x-bind:class="errors.number.length > 0 && 'is-invalid'" x-bind:disabled="!number"
                                    name="number" type="text" class="form-control"
                                    placeholder="Nomor Barang Keluar" aria-label="Nomor Barang Keluar"
                                    aria-describedby="Nomor Barang Keluar">
                                <template x-if="errors.number.length > 0">
                                    <div id="numberValidationError" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.number">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <select x-bind:class="errors.goods_code.length > 0 && 'is-invalid'"
                                    x-model="transaction.goods_code" name="goods_code" class="form-select"
                                    id="floatingSelect" aria-label="Floating label select example">
                                    <option selected>Open this select menu</option>
                                    @foreach ($goods as $item)
                                        <option value="{{ $item->code }}">{{ $item->name }}
                                            ({{ $item->code }})
                                        </option>
                                    @endforeach
                                </select>
                                <label for="floatingSelect">Pilih Barang</label>
                                <template x-if="errors.goods_code.length > 0">
                                    <div id="goodsCodeValidationError" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.goods_code">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text">Quantity</span>
                                <input x-bind:class="errors.quantity.length > 0 && 'is-invalid'"
                                    x-model="transaction.quantity" name="quantity" type="number"
                                    class="form-control" aria-label="Amount">
                                <span x-text="selectedGoods.unit" class="input-group-text"></span>
                                <template x-if="errors.quantity.length > 0">
                                    <div id="quantityValidationError" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.quantity">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <input x-bind:class="errors.location.length > 0 && 'is-invalid'"
                                    x-model="transaction.location" name="location" type="text"
                                    class="form-control" id="floatingInput" placeholder="Jakarta Selatan">
                                <label for="floatingInput">Lokasi Asal</label>
                                <template x-if="errors.location.length > 0">
                                    <div id="validationErrorLocation" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.location">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <input x-bind:class="errors.location.length > 0 && 'is-invalid'"
                                    x-model="transaction.date" name="date" type="date" class="form-control"
                                    id="floatingInput">
                                <label for="floatingInput">Tanggal Keluar</label>
                                <template x-if="errors.date.length > 0">
                                    <div id="validationErrorDate" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.date">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <textarea x-model="transaction.description" name="description" class="form-control" id="description"
                                    style="height: 100px"></textarea>
                                <label for="description">Description</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button x-on:click="() => {$refs.status.value = 0;}" type="button"
                                class="btn btn-outline-primary" data-bs-toggle="modal"
                                data-bs-target="#update-confirmation-modal">
                                Draft
                            </button>
                            <button x-on:click="() => $refs.status.value = 1" type="button" class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#update-confirmation-modal">
                                Simpan
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        {{-- New Item Components --}}
        <div x-init="() => {
            $watch('transaction', value => {
                if (value.goods_code) {
                    selectedGoods = {{ json_encode($goods) }}.find((item) => item.code == value.goods_code)
                }
            });
            @if(session()->has('modal') && session('modal') == '#newTransactionModal')
            errors.number = {{ json_encode($errors->get('number')) }};
            errors.goods_code = {{ json_encode($errors->get('goods_code')) }};
            errors.quantity = {{ json_encode($errors->get('quantity')) }};
            errors.location = {{ json_encode($errors->get('location')) }};
            errors.date = {{ json_encode($errors->get('date')) }};
            errors.description = {{ json_encode($errors->get('description')) }};
            @endif
        }" x-data="{
            selectedGoods: {},
            errors: {
                number: [],
                goods_code: [],
                quantity: [],
                location: [],
                date: [],
                description: [],
            },
            number: false,
            transaction: @if(session()->has('modal') && session('modal') == '#newTransactionModal')
            {{ json_encode(old()) }}
            @else {}
            @endif
        
        }">
            <div class="modal fade" id="confirmation-modal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            Pastikan Data Sesuai
                        </div>
                        <div class="modal-body">
                            <p>
                                No Barang Keluar :
                                <template x-if="transaction.number != null">
                                    <span x-text="transaction.number"></span>
                                </template>
                                <template x-if="transaction.number == null">
                                    <span>(Nomor Otomatis)</span>
                                </template>
                            </p>
                            <p>Barang : <span x-text="selectedGoods.name + ' (' + selectedGoods.code + ') '"></span>
                            </p>
                            <p>Kuantitas : <span x-text="transaction.quantity"></span></p>
                            <p>Asal Barang : <span x-text="transaction.location"></span></p>
                            <p>Tanggal Keluar : <span x-text="transaction.date"></span></p>
                            <p>Deskripsi : <span x-text="transaction.description"></span></p>
                            <div class="alert alert-warning" role="alert">
                                Peringatan! Barang keluar yang sudah disimpan tidak dapat diubah dan dihapus. Gunakan
                                draft untuk menyimpan sementara.
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#newTransactionModal"
                                class="btn btn-secondary">
                                Batalkan
                            </button>
                            <button
                                x-on:click="() => {
                                    $refs.create_form.submit();
                                }"
                                type="button" class="btn btn-primary">
                                Ya, Simpan Outbound
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="newTransactionModal" tabindex="-1" aria-labelledby="newTransactionModal"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <form x-ref="create_form" method="POST" action="{{ route('outbound.store') }}"
                        class="modal-content">
                        @csrf
                        <input x-ref="status" name="status" id="status" type="hidden" readonly>
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Catat Barang Keluar</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3 input-group">
                                <span class="input-group-text">
                                    <div class="form-check form-switch">
                                        <input x-model="number" class="form-check-input" type="checkbox"
                                            role="switch" id="number-toggle" checked>
                                        <label class="form-check-label" for="number-toggle">Custom Nomor Barang
                                            Keluar</label>
                                    </div>
                                </span>
                                <input x-bind:class="errors.number.length > 0 && 'is-invalid'"
                                    x-bind:disabled="!number" name="number" type="text" class="form-control"
                                    placeholder="Nomor Barang Keluar" aria-label="Nomor Barang Keluar"
                                    aria-describedby="Nomor Barang Keluar">
                                <template x-if="errors.number.length > 0">
                                    <div id="numberValidationError" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.number">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <select x-bind:class="errors.goods_code.length > 0 && 'is-invalid'"
                                    x-model="transaction.goods_code" name="goods_code"
                                    x-on:change="(e) => {
                                        selectedGoods = {{ json_encode($goods) }}.find((item) => item.code == e.target.value)
                                        {{-- console.log(res); --}}
                                    }"
                                    class="form-select" id="floatingSelect"
                                    aria-label="Floating label select example">
                                    <option selected>Open this select menu</option>
                                    @foreach ($goods as $item)
                                        <option value="{{ $item->code }}">{{ $item->name }}
                                            ({{ $item->code }})
                                        </option>
                                    @endforeach
                                </select>
                                <label for="floatingSelect">Pilih Barang</label>
                                <template x-if="errors.goods_code.length > 0">
                                    <div id="goodsCodeValidationError" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.goods_code">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text">Quantity</span>
                                <input x-bind:class="errors.quantity.length > 0 && 'is-invalid'"
                                    x-model="transaction.quantity" name="quantity" type="number"
                                    class="form-control" aria-label="Amount">
                                <span x-text="selectedGoods.unit" class="input-group-text"></span>
                                <template x-if="errors.quantity.length > 0">
                                    <div id="quantityValidationError" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.quantity">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <input x-bind:class="errors.location.length > 0 && 'is-invalid'"
                                    x-model="transaction.location" name="location" type="text"
                                    class="form-control" id="floatingInput" placeholder="Jakarta Selatan">
                                <label for="floatingInput">Lokasi Asal</label>
                                <template x-if="errors.location.length > 0">
                                    <div id="validationErrorLocation" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.location">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <input x-bind:class="errors.date.length > 0 && 'is-invalid'"
                                    x-model="transaction.date" name="date" type="date" class="form-control"
                                    id="floatingInput">
                                <label for="floatingInput">Tanggal Keluar</label>
                                <template x-if="errors.date.length > 0">
                                    <div id="validationErrorDate" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.date">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <textarea x-model="transaction.description" name="description" class="form-control" id="description"
                                    style="height: 100px"></textarea>
                                <label for="description">Description</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button x-on:click="() => $refs.status.value = 0" type="button"
                                class="btn btn-outline-primary" data-bs-toggle="modal"
                                data-bs-target="#confirmation-modal">
                                Draft
                            </button>
                            <button x-on:click="() => $refs.status.value = 1" type="button" class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#confirmation-modal">
                                Simpan
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
