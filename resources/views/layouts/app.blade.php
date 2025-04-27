<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ $page_name }} - {{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.7.1.min.js"
        integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    @stack('local-style')
    @stack('trigger-modal')
</head>

<body x-data class="position-relative">
    <main class="d-flex" style="min-height: 100vh; display: flex;">
        <aside style="width: 300px;">
            @include('layouts.navigation')
        </aside>
        <div class="flex-fill">
            <header style="padding: 0 60px 0 20px" class="bg-body-tertiary">
                <nav class="navbar">
                    <div class="container-fluid">
                        <a class="navbar-brand">{{ $page_name }}</a>
                        <div class="dropdown">
                            <a style="text-decoration: none; color:black" class="dropdown-toggle" href="#"
                                role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <span>
                                    <x-icons.user />
                                </span>
                                {{ Auth::user()->name }}
                            </a>

                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Profile</a></li>
                                <form style="cursor: pointer" method="POST" action="{{ route('logout') }}">
                                    @csrf

                                    <a class="dropdown-item" :href="route('logout')"
                                        onclick="event.preventDefault();
                                                        this.closest('form').submit();">
                                        Sign Out
                                    </a>
                                </form>
                            </ul>
                        </div>
                    </div>
                </nav>
            </header>
            <div id="content" class="p-4">
                @session('success')
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        {{ session('success') }}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                @endsession

                {{ $slot }}
            </div>
        </div>
    </main>
    {{-- <footer>
        <div class="py-4 text-white bg-gray-800">
            <div class="container mx-auto text-center">
                &copy; {{ date('Y') }} {{ config('app.name') }}. All rights reserved.
            </div>
        </div>
    </footer> --}}
</body>

</html>
