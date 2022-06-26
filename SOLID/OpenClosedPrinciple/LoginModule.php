<?php

require_once 'LoginInterface.php';

class LoginModule
{
    public function login(LoginInterface $user)
    {
        return $user->authenticateUser();
    }
}