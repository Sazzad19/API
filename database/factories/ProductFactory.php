<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */


use Faker\Generator as Faker;

$factory->define(App\Model\Product::class, function (Faker $faker) {
    return [
        'name'=>$faker->word,
        'detail'=>$faker->paragraph(3,true),
        'price'=>$faker->numberBetween(100,1000),
        'stock'=>$faker->randomDigit, 
        'discount'=>$faker->numberBetween(10,30),
        'use_id'=>function(){
            return App\User::all()->random();
        } 
    ];
});
