<?php

namespace App\Controllers;

class CarFinance extends BaseController
{
    public function index(): string
    {   

        helper('meta');
        $meta = car_finance_meta();
        $data['page_title'] = $meta[4]['content'];    
        $data['meta'] = $meta;

        return view('car-finance', $data);
    }
}
?>