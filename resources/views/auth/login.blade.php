<x-guest-layout>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <img style="z-index:-10; width: 600px; position: absolute; top: 20%; left: 7%;" src="{{ asset('login.png') }}"
        alt="">

    <img style="z-index:-10; width: 500px; position: absolute; top: 8%; right: 4%;" src="{{ asset('login2.png') }}"
        alt="">

    <form style="width: 26%" method="POST" action="{{ route('login') }}">
        @csrf
        <h3 class="mb-4">Sign to your account</h3>

        <div class="mb-3 form-floating">
            <input @class(['form-control', 'is-invalid' => $errors->has('email')]) value="{{ old('email') }}" name="email" type="email" \
                id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Email address</label>
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="form-floating">
            <input @class(['form-control', 'is-invalid' => $errors->has('password')]) name="password" type="password" class="form-control"
                id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mt-3 form-check">
            <input name="remember" class="form-check-input" type="checkbox" value="" id="checkDefault">
            <label class="form-check-label" for="checkDefault">
                {{ __('Remember me') }}
            </label>
        </div>

        <button class="px-5 py-2 mt-3 btn btn-primary">Sign In</button>
    </form>
</x-guest-layout>
