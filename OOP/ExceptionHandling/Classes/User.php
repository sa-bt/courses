<?php

namespace ExceptionHandling;

class User
{
    /**
     * @throws \Exception
     */
    public function isDeveloper(bool $value)
    {
        if ($value) {
            return "This user is a developer";
        } else {
            throw new CustomExceptionClass("Exception: This user is not a developer", 100);
        }
    }


    public function throwMultipleExceptionTypes($input)
    {
        if (is_string($input)) {
            return "The input is a string.";
        } else {
            if (is_int($input)) {
                throw new CustomExceptionClass("EXCEPTION from MyCustomExceptionClass: The input is an integer", 101);
            } else if (is_array($input)) {
                throw new \Exception("EXCEPTION from Exception class: The input is an array.");
            }
        }
    }
}