<?php

namespace SetterAndGetter;
class User
{
    private $name;

    public function setProperty($name, $val)
    {
        $this->{$name} = $val;
    }

    public function setName($name)
    {
        $msg = '';
        if (!is_string($name)) {
            $msg = 'Invalid Input';
        } else {
            if (strlen($name) < 3) {
                $msg = 'Invalid Input';
            } else if (strlen($name) > 20) {
                $msg = 'Invalid Input';
            } else {
                $this->name = $name;
            }
        }
        echo $msg;
    }

    public function getName()
    {
        return $this->name;
    }
}