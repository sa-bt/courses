<?php
require_once 'vendor/autoload.php';

//$obj = new stdClass;
//$obj->name = "Ahmad";
//echo $obj->name;

$numbers = [10, 20, 33];
$iterator = new ArrayIterator($numbers);
echo $iterator->current();
echo "\n";
echo $iterator->count();
echo "\n";

$limit = new LimitIterator($iterator, 0, 2);
foreach($limit as $item) {
    echo $item . "\n";
}

$ci = new CachingIterator($iterator);
foreach ($ci as $item) {
    echo $item;
    if ($ci->hasNext()) {
        echo ", ";
    }
}

$nav = [
    'Home' => '/home',
    'Products' => '/products',
    'About Us' => '/about',
    'Privacy Policy' => '/privacy-policy',
];
$output = new ArrayIterator();
$ca = new CachingIterator(new ArrayIterator($nav));
foreach ($ca as $name => $url) {
    if ($ca->hasNext()) {
        $output->append('<li><a href="' . $url . '">' . $name . '</a></li>');
    } else {
        $output->append('<li class="last"><a href="' . $url . '">' . $name . '</a></li>');
    }
}
if ($output->count()) {
    $output = (array) $output;
    echo '<ul id="nav">' . "\n" . implode("\n", $output) . "\n" . '</ul>';
}



