<?php

namespace MethodChaining;
class User
{
    public function showFirstname()
    {
        echo 'Ahmad ';
        return $this;
    }

    public function showLastname()
    {
        echo 'Bakhshian ';
        return $this;
    }

    public function showDateOfBirth()
    {
        echo 1989;
    }
}