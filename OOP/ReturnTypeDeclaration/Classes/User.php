<?php
declare (strict_types = 1);

namespace ReturnTypeDeclaration;

class User
{
    public function returnUserName($name): string
    {
        return $name;
    }

    public function returnUserFullName($arr): array
    {
        return $arr;
    }

    public function returnUserAge($age): int
    {
        return $age;
    }

    public function returnUserHeight($height): float
    {
        return $height;
    }

    public function isDeveloper($value): bool
    {
        return $value;
    }

    public function sendMessage($obj): MessageInterface
    {
        return $obj;
    }

    public function checkGender($gender): ?string
    {
        if (is_string($gender)) {
            if ($gender == 'male') {
                return $gender;
            } else if ($gender == 'female') {
                return $gender;
            } else {
                return null;
            }
        }
    }
}