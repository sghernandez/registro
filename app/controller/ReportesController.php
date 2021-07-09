<?php

namespace App\controller;
use App\model\ReportesModel;

class ReportesController{

    public function __construct()
    {
        if(! isLoggedIn()) { redirect('ccomercial/login'); }
               
        $this->ReportesModel = new ReportesModel;
        $this->container = 'layouts/master';
    }


    public function notificar()
    {
        $data = [
           'extensionsAllowed' => ['xls', 'xlsx', 'ods'],
           'input' => 'excel',           
        ];   

        if(isPost())
        {
            $upload = $this->ReportesModel->validate_upload($data);

            if(! empty($upload['has_error']))
            {
                flash('register_success', $upload['has_error']);            
            }else{
                flash('register_success', 'El archivo se cargó correctamente.');             
            }    
        }    

        return view($this->container, array_merge($data, ['view' => 'reportes/notificar'])); 
    }


}