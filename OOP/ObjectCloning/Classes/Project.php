<?php

namespace ObjectCloning;

class Project
{
    public $name;

    public function __construct($name)
    {
        $this->name = $name;
    }
}