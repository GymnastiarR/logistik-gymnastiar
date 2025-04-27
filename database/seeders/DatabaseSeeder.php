<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        \App\Models\User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'email_verified_at' => now(),
            'password' => bcrypt('admin123'),
            'remember_token' => Str::random(10),
        ]);

        $goodsList = [
            [
                'name' => 'Lenovo ThinkPad X1 Carbon',
                'stock' => 40,
            ],
            [
                'name' => 'Dell XPS 13',
                'stock' => 72,
            ],
            [
                'name' => 'Apple MacBook Pro 16"',
                'stock' => 58,
            ],
            [
                'name' => 'HP Spectre x360',
                'stock' => 84,
            ],
            [
                'name' => 'Asus ZenBook 14',
                'stock' => 76,
            ],
            [
                'name' => 'Acer Swift 3',
                'stock' => 93,
            ],
            [
                'name' => 'Microsoft Surface Laptop 4',
                'stock' => 65,
            ],
            [
                'name' => 'Razer Blade Stealth 13',
                'stock' => 50,
            ],
            [
                'name' => 'LG Gram 17',
                'stock' => 30,
            ],
            [
                'name' => 'Samsung Galaxy Book Pro 360',
                'stock' => 45,
            ],
            [
                'name' => 'Huawei MateBook X Pro',
                'stock' => 55,
            ],
            [
                'name' => 'Toshiba Dynabook Tecra A50',
                'stock' => 80,
            ],
            [
                'name' => 'Fujitsu Lifebook U9311X',
                'stock' => 70,
            ],
            [
                'name' => 'Sony VAIO Z',
                'stock' => 60,
            ],
            [
                'name' => 'MSI Prestige 14',
                'stock' => 85,
            ],
            [
                'name' => 'Gigabyte Aero 15',
                'stock' => 90,
            ],
            [
                'name' => 'Lenovo Yoga 9i',
                'stock' => 75,
            ],
            [
                'name' => 'Dell Inspiron 14',
                'stock' => 88,
            ],
            [
                'name' => 'Apple MacBook Air M1',
                'stock' => 95,
            ],
            [
                'name' => 'HP Envy x360',
                'stock' => 78,
            ],
            [
                'name' => 'Asus ROG Zephyrus G14',
                'stock' => 82,
            ],
        ];

        $goods = [];


        foreach ($goodsList as $key => $value) {
            $goods[] = \App\Models\Goods::create([
                'name' => $value['name'],
                'stock' => $value['stock'],
            ]);
        }

        for ($i = 0; $i < 308; $i++) {
            \App\Models\Transaction::create([
                'goods_code' => $goods[array_rand($goods)]->code,
                'user_id' => 1,
                'quantity' => rand(1, 3),
                'status' => rand(0, 1),
                'date' => now()->subDays(rand(1, 30)),
                'created_at' => now()->subDays(rand(1, 30)),
                'updated_at' => now()->subDays(rand(1, 30)),
                'category' => rand(1, 2) == 1 ? 'inbound' : 'outbound',
                'location' => \fake()->city(),
                'description' => 'Sample transaction description',
            ]);
        }
    }
}
