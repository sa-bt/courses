<?php

namespace InterfaceCourse;


class User implements SampleInterface,UserInterface,\Countable,\JsonSerializable
{
    public $userProperties = ['firstname' => 'Ahmad', 'lastname' => 'Bakhshian', 'age' => 33];

    public function showFirstName()
    {
        return "This method is to show the firstname.";
    }

    public function showLastName()
    {
        return "This method is to show the lastname.";
    }

    public function showFullName()
    {
        return "This method is to show the fullname.";
    }

    public function showUserName()
    {
        return "This method is to show the username.";
    }

    public function count()
    {
        return count($this->userProperties);
    }

    public function jsonSerialize()
    {
        return json_encode($this->userProperties);
    }
}