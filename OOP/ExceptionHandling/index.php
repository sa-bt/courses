<?php
require_once 'vendor/autoload.php';


$user=new \ExceptionHandling\User();
try {
    echo $user->isDeveloper(false);
}catch (\ExceptionHandling\CustomExceptionClass $exception){
    echo $exception;
    echo "<br>";
//    echo $exception->getFile();
//    echo "<br>";
//    echo $exception->getLine();
//    echo "<br>";
//    var_dump($exception->getTraceAsString());
    echo "<br>";
}

try {
    echo $user->throwMultipleExceptionTypes('45');
}catch (\ExceptionHandling\CustomExceptionClass $exception){
    echo $exception;
    echo "<br>";

} finally {
    echo "<br>";
    echo "The process ended";
}
echo "<br>";
echo "<br>";
echo "The rest of the program.";
