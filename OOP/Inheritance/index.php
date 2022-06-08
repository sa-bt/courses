<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$user = new \Inheritance\User("Ahmad", "Bakhshian");
echo $user->isAdmin(); //null

$admin = new \Inheritance\Admin("Ahmad", "Bakhshian", 'admin', true);
echo $admin->isAdmin();//This user is an Administrator

$subAdmin = new \Inheritance\SubAdmin("Ahmad", "Bakhshian");
echo "\n";
echo $subAdmin->showFullName();
echo "\n";
echo $subAdmin->doSomeThings();
