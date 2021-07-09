<?php 

namespace App\Controller;

class HomeController
{
    public function index()
    {
        $data = [
           'title'  => 'Home',
           'view' => 'home'
        ];
        
        return view('layouts/master', $data);
    }
}