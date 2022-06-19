<?php
require_once 'vendor/autoload.php';

use ConstantKeyword\User;
use ConstantKeyword\Author;

$user = new User();
$author = new Author();

echo $user::BASE_USER_GROUP_ID;
echo "\n";
echo $user->getBaseUserGroupId();
echo "\n";
echo $author->showConstantFromParentClass();
