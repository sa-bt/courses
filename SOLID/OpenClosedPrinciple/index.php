<?php

require_once 'LoginModule.php';
require_once 'NormalUser.php';
require_once 'GmailUser.php';

$loginObject= new LoginModule();

$user= new NormalUser();

echo  $loginObject->login($user);

echo (new LoginModule())->login(new GmailUser());
