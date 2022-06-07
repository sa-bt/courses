<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$user = new Sabt\Person();
$user->fname = "Ahmad";
$user->lName = "Bakhshian";
var_dump($user->fname);


$user = new Sabt\Person2();
$user->fname = "Ahmad";
$user->lName = "Bakhshian";
var_dump($user->fname);
var_dump($user->lName);
