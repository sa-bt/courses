<?php

namespace AbstractCourse;


class User extends AbstractClass
{

    public function anAbstractMethod()
    {
        return "This is the abstract method implemented in the User class.";
    }

    public function getPropertyValue()
    {
        return $this->sampleProperty;
    }

    //overwrite doSomething method
    public function doSomething()
    {
        return "This method is overridden in the User class.";
    }
}