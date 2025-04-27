<section>
    <header>
        <h2 class="text-lg font-medium text-gray-900">
            {{ __('Update Password') }}
        </h2>

        <p class="mt-1 text-sm text-gray-600">
            {{ __('Ensure your account is using a long, random password to stay secure.') }}
        </p>
    </header>

    <form method="post" action="{{ route('password.update') }}" class="mt-6 space-y-6">
        @csrf
        @method('put')

        <div class="mb-3 form-floating">
            <input name="current_password" type="password" @class([
                'form-control',
                'is-invalid' => $errors->has('current_password'),
            ]) id="passwordInput"
                placeholder="Password">
            <label for="passwordInput">Current Password</label>
            @error('current_password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3 form-floating">
            <input name="password" type="password" @class(['form-control', 'is-invalid' => $errors->has('password')]) id="passwordInput"
                placeholder="Password">
            <label for="passwordInput">New Password</label>
            @error('password')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="form-floating">
            <input name="password_confirmation" type="password" @class([
                'form-control',
                'is-invalid' => $errors->has('password_confirmation'),
            ])
                id="passwordConfirmationInput" placeholder="Password">
            <label for="passwordConfirmationInput">Password Confirmation</label>
            @error('password_confirmation')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <button class="px-5 py-2 mt-3 btn btn-primary">Save Password</button>
    </form>
</section>
