<?php

namespace Inheritance;
class SubAdmin extends Admin
{
    public function showFullName()
    {
        return $this->firstname . ' ' . $this->lastname . " in sub admin class";
    }

    public function doSomeThings()
    {
        echo "This method is specific to SubAdmin class";
    }
}