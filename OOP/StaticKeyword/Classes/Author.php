<?php

namespace StaticKeyword;

class Author extends User
{
    public function getStaticUserNoProperty()
    {
        return parent::$userNumber;
    }

    public function runStaticAddToUsersNoMethod()
    {
        return parent::addToUsersNo();
    }
}