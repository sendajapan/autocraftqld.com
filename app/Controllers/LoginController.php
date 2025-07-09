<?php

namespace App\Controllers;

use App\Models\AuthModel;

class LoginController extends BaseController
{
    
    public function login()
    {   
        /*$var = 'senda12';
        $hash = password_hash($var, PASSWORD_BCRYPT);
        echo $hash;
        exit;*/
        $data = [];
        if($this->request->getPost()){
            $rules = [
                'email' => 'required|min_length[6]|max_length[50]|valid_email',
                'password' => 'required|max_length[255]',
            ];

            $errors = [
                'password' => [
                    'required' => 'Email required',
                    'validateUser' => "Email or Password don't match",
                ],
            ];

            if (!$this->validate($rules, $errors)) {
                return view('login', [
                    "validation" => $this->validator,
                ]);

            } else {
                $model = new AuthModel();
                $email = $this->request->getVar('email');
                $password = $this->request->getVar('password');

                $user = $model->where('email', $email)->first();

                if ($user && password_verify($password, $user['password'])) {
                    $this->setUserSession($user);
                    return redirect()->to(base_url('admin/dashboard'));
                } else {
                    session()->setFlashdata('notFound', 'Failed! Invalid email or password');
                    return redirect()->to(base_url('login'));
                }
            }
        }
        return view('login');
    }

    private function setUserSession($user)
    {
        $data = [
            'user_id'    => $user['user_id'],
            'username'   => $user['username'],
            'usertype'   => $user['usertype'],
            'email'      => $user['email'],
            'isLoggedIn' => true,
        ];

        session()->set($data);
        return true;
    }


    public function logout()
    {
        session()->destroy();
        return redirect()->to('login');
    }

    // public function passHash(){
    //     echo password_hash("00000000", PASSWORD_DEFAULT);
    // }

    public function hashPassword($password)
    {
        echo password_hash($password, PASSWORD_DEFAULT);
    }

    
}