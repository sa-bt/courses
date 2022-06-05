<?php

namespace Sabt;

class User
{
    public $fName;
    public $lName;

    public function __construct($fName, $lName)
    {
        $this->fName = $fName;
        $this->lName = $lName;
        echo "This user`s firstname is $this->fName and lastname is $this->lName \n";
        $this->doSomething();
    }

    public function doSomething()
    {
        echo "This method is going to do something in the future. \n";
    }

    public function __destruct()
    {
        echo "Destruct Called \n";
    }
}