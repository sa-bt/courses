<?php

namespace ConstantKeyword;

class User
{
    const BASE_USER_GROUP_ID = 3;

    public function getBaseUserGroupId()
    {
        return self::BASE_USER_GROUP_ID;
    }
}