<?php

namespace StaticKeyword;

class User
{
    public static $userNumber = 0;

    public $someProperty = "Some Property";

    public static function addToUsersNo()
    {
        return self::$userNumber++;
    }

    public function doSomething()
    {
        return $this->someProperty;
    }

    public function runAddToUsersNoMethod()
    {
        self::addToUsersNo();
    }

    public function runDoSomething()
    {
        return self::doSomething();
    }
}