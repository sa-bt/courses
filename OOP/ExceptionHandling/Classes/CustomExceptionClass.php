<?php

namespace ExceptionHandling;

class CustomExceptionClass extends \Exception
{
    protected $message;
    protected $code;

    public function __construct($message, $code)
    {
        $this->message = $message;
        $this->code = $code;
    }

    public function __toString()
    {
        return "$this->message with code of $this->code";
    }
}