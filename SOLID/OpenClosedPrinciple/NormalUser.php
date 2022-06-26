<?php
require_once 'LoginInterface.php';

class NormalUser implements LoginInterface
{

    public function authenticateUser()
    {
        return "normal user logged in via username and password";
    }
}