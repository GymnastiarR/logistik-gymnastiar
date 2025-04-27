<style>
    .navigation {
        width: 300px;
        position: sticky;
        top: 0;
        left: 0;
        height: 100vh;
    }
</style>

<nav class="p-3 navigation bg-dark">
    <div>
        <a href="/">
            <img src="/logo-v2.png" style="width: 94%" alt="">
        </a>
    </div>
    <hr>
    <div>
        <ul class="gap-2 p-0 d-flex flex-column list-unstyled">
            <div style="display: flex; align-items: center; height: 46px; width: 100%; @if (request()->routeIs('goods.index')) background-color: #191d21; @endif"
                class="px-3 rounded">
                <x-nav-link style="color: whitesmoke; text-decoration: none;" href="/goods">
                    Daftar Barang
                </x-nav-link>
            </div>
            <div style="display: flex; align-items: center; height: 46px; width: 100%; @if (request()->routeIs('inbound.index')) background-color: #191d21; @endif"
                class="px-3 rounded">
                <x-nav-link style="color: whitesmoke; text-decoration: none;" href="/inbound">
                    Daftar Barang Masuk
                </x-nav-link>
            </div>
            <div style="display: flex; align-items: center; height: 46px; width: 100%; @if (request()->routeIs('outbound.index')) background-color: #191d21; @endif"
                class="px-3 rounded">
                <x-nav-link style="color: white; text-decoration: none;" href="/outbound">
                    Daftar Barang Keluar
                </x-nav-link>
            </div>
        </ul>
    </div>
</nav>
