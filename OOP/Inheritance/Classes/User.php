<?php

namespace Inheritance;
class User
{
    public $firstname;
    public $lastname;
    public $role = 'basic';
    public $hasFullPermission = false;

    public function __construct($firstname, $lastname, $role = null, $hasFullPermission = null)
    {
        $this->firstname = $firstname;
        $this->lastname = $lastname;
        if ($role) {
            $this->role = $role;
        }
        if ($hasFullPermission) {
            $this->hasFullPermission = $hasFullPermission;
        }
    }

    public function isAdmin()
    {
        if ($this->role == 'admin') {
            return "This user is an Administrator";
        }
    }

    public function showFullName()
    {
        return $this->firstname . ' ' . $this->lastname;
    }
}