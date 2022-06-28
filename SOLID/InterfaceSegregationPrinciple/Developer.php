<?php

require_once 'CodeableInterface.php';
require_once 'TestableInterface.php';

class Developer implements CodeableInterface, TestableInterface
{
    public function code()
    {
        return true;
    }

    public function testInLocalhost()
    {
        return true;
    }

    public function testUserExperience()
    {
        return true;
    }
}