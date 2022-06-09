<?php

namespace AccessModifier;

class ChildClass extends Visibility
{
    public function __construct()
    {
        parent::__construct();
        echo $this->protectedProperty . "from ChildClass\n";
        $this->showProtectedMethod();
    }

}