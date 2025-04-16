<?php

class Magic
{
    //when we call a static method that does not exist the __callStatic method called

    public static function __callStatic($name, $arguments)
    {
        echo "The method of \"$name\" with arguments " . implode(', ', $arguments)." called\n";

    }
}
Magic::doSometiong("name","Pourya","Bakhshian");
//doSomething is not exist in Magic class but we are calling

