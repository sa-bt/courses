<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';


$user = new \DependencyInjection\User(new \DependencyInjection\Database());
$allUsers = $user->fetch();
$user->insert(['firstName' => 'Sara', 'lastName' => 'Ebrahimi']);

if ($allUsers) {
    foreach ($allUsers as $user) {
        echo $user['first_name'] . ' ' . $user['last_name'] . "\n";
    }
}