<?php
require_once 'Rectangle.php';
require_once 'Square.php';

$rectangle = new Rectangle();
$rectangle->setHeight(2);
$rectangle->setWidth(3);
echo $rectangle->area();

echo '<br>';

$square = new Square();
$square->setHeight(2);
$square->setWidth(3);
echo $square->area();

