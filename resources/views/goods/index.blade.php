<x-app-layout>
    <x-slot:page_name>
        Daftar Barang
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
    <div x-data="{ selectedItem: {}, url: '{{ route('goods.index') }}' }">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#newItemModal">
                    <x-icons.add />
                    <span style="padding-left: 4px;">
                        Barang Baru
                    </span>
                </button>
                <form class="gap-2 d-flex" role="search">
                    <input value="{{ request('code') }}" name="code" class="form-control me-2" type="search"
                        placeholder="Kode Barang" aria-label="Search">
                    <input value="{{ request('name') }}" name="name" class="form-control me-2" type="search"
                        placeholder="Nama Barang" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    <a href="{{ route('goods.index') }}" class="btn btn-outline-success" type="submit">Reset</a>
                </form>
            </div>
        </nav>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Kode Barang</th>
                    <th scope="col">Name</th>
                    <th scope="col">Stock</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($goods as $item)
                    <tr>
                        <th scope="row">{{ $loop->iteration }}</th>
                        <td>{{ $item->code }}</td>
                        <td>{{ $item->name }}</td>
                        <td>{{ $item->stock }}</td>
                        <td><button style="background: none; border: none" data-bs-toggle="modal"
                                data-bs-target="#updateItemModal" type="button"
                                x-on:click="() => {selectedItem = {{ json_encode($item) }}}">
                                <x-icons.edit />
                            </button>
                            <button style="background: none; border: none" data-bs-toggle="modal"
                                data-bs-target="#confirmation-delete-modal" type="button"
                                x-on:click="() => {selectedItem = {{ json_encode($item) }}}">
                                <x-icons.delete />
                            </button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <div class="mx-auto">
            {{ $goods->withQueryString()->links('pagination::bootstrap-5') }}
        </div>

        <!-- Modal -->
        <div class="modal fade" id="confirmation-delete-modal" tabindex="-1"
            aria-labelledby="confirmation-delete-modal" aria-hidden="true">
            <form method="POST" x-bind:action="url + '/' + selectedItem.id" class="modal-dialog">
                @csrf
                @method('DELETE')
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Are you sure delete this goods?</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Apakah anda yakin ingin menghapus barang ini? Pastikan data yang anda masukkan sudah benar.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </form>
        </div>
        <div x-init="() => {
            goods.id = `{{ session()->has('goods_id') ? session()->get('goods_id') : '' }}`
            $watch('selectedItem', value => goods = selectedItem);
            @if(session()->has('modal') && session('modal') == '#updateItemModal')
            errors.name = {{ json_encode($errors->get('name')) }};
            errors.code = {{ json_encode($errors->get('code')) }};
            errors.stock = {{ json_encode($errors->get('stock')) }};
            errors.unit = {{ json_encode($errors->get('unit')) }};
            errors.description = {{ json_encode($errors->get('description')) }};
            @endif
        }" x-data="{
            errors: {
                name: [],
                code: [],
                stock: [],
                unit: [],
                description: [],
            },
            code: false,
            goods: @if(session()->has('modal') && session('modal') == '#updateItemModal')
            {{ json_encode(old()) }}
            @else {}
            @endif
        }">
            <div class="modal fade" id="confirmation-update-modal" tabindex="-1"
                aria-labelledby="confirmation-update-modal" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body">
                            Apakah anda yakin ingin melakukan tindakan ini? Pastikan data yang anda masukkan sudah
                            benar.
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
                                Ya, Ubah Data
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="updateItemModal" tabindex="-1" aria-labelledby="updateItemModal"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <form x-ref="update_form" method="POST" x-bind:action="url + '/' + goods.id" class="modal-content">
                        @csrf
                        @method('PUT')
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Update Barang Baru</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3 input-group">
                                <span class="input-group-text" id="Kode Barang">
                                    <label class="form-check-label" for="code-toggle">Custom Kode Barang</label>
                                </span>
                                <input x-bind:class="errors.code.length > 0 && 'is-invalid'"
                                    style="pointer-events:none" x-model="goods.code" tabindex="-1" readonly
                                    name="code" type="text" class="form-control bg-body-secondary"
                                    placeholder="Kode Barang" aria-label="Kode Barang"
                                    aria-describedby="Kode Barang">
                            </div>
                            <div class="mb-3 form-floating">
                                <input x-bind:class="errors.name.length > 0 && 'is-invalid'" x-model="goods.name"
                                    name="name" type="text" class="form-control" id="floatingInput"
                                    placeholder="Meja makan">
                                <label for="floatingInput">Nama Barang</label>
                                <template x-if="errors.name.length > 0 || errors.unit.length > 0">
                                    <div class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.name">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text">Stock</span>
                                <input style="pointer-events:none" tabindex="-1" readonly
                                    x-bind:class="errors.stock.length > 0 && 'is-invalid'" x-model="goods.stock"
                                    name="stock" type="number" class="form-control bg-body-secondary"
                                    placeholder="30" aria-label="Stock Awal">
                                <span class="input-group-text">Satuan</span>
                                <input x-bind:class="errors.unit.length > 0 && 'is-invalid'" x-model="goods.unit"
                                    name="unit" type="text" class="form-control" placeholder="Buah / Liter"
                                    aria-label="Satuan">
                                <template x-if="errors.stock.length > 0 || errors.unit.length > 0">
                                    <div class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.stock">
                                                <li x-text="error"></li>
                                            </template>
                                            <template x-for="error in errors.unit">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <textarea x-modal="goods.description" name="description" class="form-control" id="description"
                                    style="height: 100px"></textarea>
                                <label for="description">Description</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button
                                x-on:click="() => { errors = { name : [], stock : [], unit : [], code : [], description : [] } }"
                                type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#confirmation-update-modal">
                                Simpan Perubahan
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        {{-- New Item Components --}}
        <div x-init="() => {
            @if(session()->has('modal') && session('modal') == '#newItemModal')
            errors.name = {{ json_encode($errors->get('name')) }};
            errors.code = {{ json_encode($errors->get('code')) }};
            errors.stock = {{ json_encode($errors->get('stock')) }};
            errors.unit = {{ json_encode($errors->get('unit')) }};
            errors.description = {{ json_encode($errors->get('description')) }};
            @endif
        }" x-data="{
            errors: {
                name: [],
                code: [],
                stock: [],
                unit: [],
                description: [],
            },
            code: false,
            goods: @if(session()->has('modal') && session('modal') == '#newItemModal')
            {{ json_encode(old()) }}
            @else {}
            @endif
        }">
            <div class="modal fade" id="confirmation-modal" tabindex="-1" aria-labelledby="exampleModalLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-body">
                            Apakah anda yakin ingin melakukan tindakan ini? Pastikan data yang anda masukkan sudah
                            benar.
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-bs-toggle="modal" data-bs-target="#newItemModal"
                                class="btn btn-secondary">
                                Batalkan
                            </button>
                            <button
                                x-on:click="() => {
                                    $refs.create_form.submit();
                                }"
                                type="button" class="btn btn-primary">
                                Ya, Simpan
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="newItemModal" tabindex="-1" aria-labelledby="newItemModal"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <form x-ref="create_form" method="POST" action="{{ route('goods.store') }}"
                        class="modal-content">
                        @csrf
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Barang Baru</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3 input-group">
                                <span class="input-group-text" id="Kode Barang">
                                    <div class="form-check form-switch">
                                        <input x-model="code" class="form-check-input" type="checkbox"
                                            role="switch" id="code-toggle" checked>
                                        <label class="form-check-label" for="code-toggle">Custom Kode Barang</label>
                                    </div>
                                </span>
                                <input x-model="goods.code" x-bind:disabled="!code" name="code"
                                    type="text" class="form-control" placeholder="Kode Barang"
                                    aria-label="Kode Barang" aria-describedby="Kode Barang">
                            </div>
                            <div class="mb-3 form-floating">
                                <input x-bind:class="errors.name.length > 0 && 'is-invalid'" x-model="goods.name"
                                    name="name" type="text" class="form-control" id="floatingInput"
                                    placeholder="Meja makan">
                                <label for="floatingInput">Nama Barang</label>
                                <template x-if="errors.name.length > 0">
                                    <div id="validationServer03Feedback" class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.name">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 input-group">
                                <span class="input-group-text">Stock Awal</span>
                                <input x-bind:class="errors.stock.length > 0 && 'is-invalid'" x-model="goods.stock"
                                    name="stock" type="number" class="form-control" placeholder="30"
                                    aria-label="Stock Awal">
                                <span class="input-group-text">Satuan</span>
                                <input x-bind:class="errors.unit.length > 0 && 'is-invalid'" x-model="goods.unit"
                                    name="unit" type="text" class="form-control" placeholder="Buah / Liter"
                                    aria-label="Satuan">
                                <template x-if="errors.stock.length > 0 || errors.unit.length > 0">
                                    <div class="invalid-feedback">
                                        <ul>
                                            <template x-for="error in errors.stock">
                                                <li x-text="error"></li>
                                            </template>
                                            <template x-for="error in errors.unit">
                                                <li x-text="error"></li>
                                            </template>
                                        </ul>
                                    </div>
                                </template>
                            </div>
                            <div class="mb-3 form-floating">
                                <textarea name="description" class="form-control" id="description" style="height: 100px"></textarea>
                                <label for="description">Description</label>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#confirmation-modal">
                                Simpan Barang
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
