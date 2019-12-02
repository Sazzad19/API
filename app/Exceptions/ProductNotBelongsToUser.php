<?php

namespace App\Exceptions;

use Exception;

class ProductNotBelongsToUser extends Exception
{
	public function render(){
    return [
      'errror'=>'Product is not belongs to user'
    ];
}
}
