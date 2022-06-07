<?php

namespace Sabt;

class Person
{
    public $info = [];

    public function __set($name, $value)
    {
        $this->info[$name] = $value;
    }

    public function __get($name)
    {
        return $this->info[$name];
    }
}