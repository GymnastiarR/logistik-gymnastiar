<x-guest-layout>
    <form style="width:26%" method="POST" action="{{ route('register') }}">
        @csrf
        <h3 class="mb-3">Create your account</h3>

        <div class="mb-3 form-floating">
            <input value="{{ old('name') }}" name="name" type="text" @class(['form-control', 'is-invalid' => $errors->has('name')]) id="nameInput"
                placeholder="John Doe">
            <label for="nameInput">Name</label>
            @error('name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3 form-floating">
            <input value="{{ old('email') }}" name="email" type="email" @class(['form-control', 'is-invalid' => $errors->has('email')])
                id="emailInput" placeholder="name@example.com">
            <label for="emailInput">Email address</label>
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3 form-floating">
            <input name="password" type="password" @class(['form-control', 'is-invalid' => $errors->has('password')]) id="passwordInput"
                placeholder="Password">
            <label for="passwordInput">Password</label>
            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="form-floating">
            <input name="password_confirmation" type="password" @class([
                'form-control',
                'is-invalid' => $errors->has('passwordConfirmation'),
            ])
                id="passwordConfirmationInput" placeholder="Password">
            <label for="passwordConfirmationInput">Password Confirmation</label>
            @error('passwordConfirmation')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <button class="px-5 py-2 mt-3 btn btn-primary">Sign Up</button>

        <div class="flex items-center justify-end mt-3">
            <a class="" href="{{ route('login') }}">
                <small>
                    {{ __('Already registered?') }}
                </small>
            </a>
        </div>
    </form>
</x-guest-layout>
