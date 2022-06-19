<?php

namespace ConstantKeyword;

class Author extends User
{
    public function showConstantFromParentClass()
    {
        return parent::BASE_USER_GROUP_ID;
    }
}