<?php

require_once 'TestableInterface.php';

class Tester implements TestableInterface
{

    public function testUserExperience()
    {
        return true;
    }
}