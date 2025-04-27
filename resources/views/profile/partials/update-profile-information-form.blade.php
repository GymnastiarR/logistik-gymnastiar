<section>
    <header>
        <h2 class="text-lg font-medium text-gray-900">
            {{ __('Profile Information') }}
        </h2>

        <p class="mt-1 text-sm text-gray-600">
            Update your account's profile information and email address.
        </p>
    </header>

    <form id="send-verification" method="post" action="{{ route('verification.send') }}">
        @csrf
    </form>

    <form method="post" action="{{ route('profile.update') }}" class="mt-6 space-y-6">
        @csrf
        @method('patch')

        <div class="mb-3 form-floating">
            <input value="{{ old('name', $user->name) }}" name="name" type="text" @class(['form-control', 'is-invalid' => $errors->has('name')])
                id="nameInput" placeholder="John Doe">
            <label for="nameInput">Name</label>
            @error('name')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <div class="mb-3 form-floating">
            <input value="{{ old('email', $user->email) }}" name="email" type="email" @class(['form-control', 'is-invalid' => $errors->has('email')])
                id="emailInput" placeholder="name@example.com">
            <label for="emailInput">Email address</label>
            @error('email')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
            @enderror
        </div>

        <button class="px-5 py-2 btn btn-primary">Save</button>
    </form>
</section>
