<?php

namespace AbstractCourse;

abstract class AbstractClass
{
    protected $sampleProperty = "This is a property in the AbstractClass.";

    public function __construct()
    {
        echo "This is the constructor the the AbstractClass.";
    }

    abstract public function anAbstractMethod();

    public function doSomething()
    {
        return "This method is to do something.";
    }
}