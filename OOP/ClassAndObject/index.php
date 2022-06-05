<?php
ini_set('display_errors', '1');
require_once 'vendor/autoload.php';

$objectMadeFromUserClass = new Sabt\User();
$objectMadeFromUserClass->showFullName();

$objectMadeFromUser2Class = new Sabt\User2();
$objectMadeFromUser2Class->showFullName();

$objectMadeFromUser3Class = new Sabt\User3();
$objectMadeFromUser3Class->showFullName();