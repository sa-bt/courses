<?php
require_once 'LoginInterface.php';

class GmailUser implements LoginInterface
{
    public function authenticateUser()
    {
        return "user logged in via gmail account";
    }
}