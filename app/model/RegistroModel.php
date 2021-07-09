<?php

namespace App\model;
use App\model\DB_CORE\DB;


class RegistroModel extends DB {

    public function __construct(){
        if(! isLoggedIn()) { redirect('ccomercial/login'); }
    }
    

    public function registrar_ingreso($id)
    {
        $dataInsert = [
            'Ccomercial_id' => $_SESSION['user_id'],
            'Persona_id' => $id
        ];     

        return $this->insert('Ingreso', $dataInsert);
    }    


    public function validate_unique($data)
    {        
        if($this->getRow('Persona', ['Persona_email' => post('email')]))
        {
            $data['email_err'] = 'El email ya está registrado';
            $data['has_errors'] = TRUE;
        }            

        if($this->getRow('Persona', ['Persona_documento' => post('documento')]))
        {
            $data['documento_err'] = 'El documento ya está registrado';
            $data['has_errors'] = TRUE;
        }       
        
        return $data;
    }
    
}