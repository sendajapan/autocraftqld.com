<?php

namespace App\Controllers;

class SevenDayReturn extends BaseController
{
    public function index()
    {
        helper('meta');
        $meta = seven_day_return_meta();
        $data['page_title'] = $meta[4]['content'];    
        $data['meta'] = $meta;
        return view('7-day-return', $data);
    }
}
?>