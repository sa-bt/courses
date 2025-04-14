<?php

class Magic
{
    //when we call a method that does not exist the __call method is called

    public function __call($name, $arguments)
    {
        echo "The method of \"$name\" with arguments " . implode(', ', $arguments)." called\n";

    }
}
$class=new Magic();

//doSomething is not exist in Magic class but we are calling

$class->doSomething("a","b","c");
