<?php
require_once 'vendor/autoload.php';

use ObjectCloning\User;

$project= new \ObjectCloning\Project('SABT');
$user = new User($project);
$newUser = clone $user;

var_dump(spl_object_hash($user));
var_dump(spl_object_hash($newUser));

echo "\n";

var_dump(spl_object_hash($user->projectName));
var_dump(spl_object_hash($newUser->projectName));

echo "\n";

$user->projectName->name = 'New Project Name';

var_dump($user->projectName->name);
var_dump($newUser->projectName->name);