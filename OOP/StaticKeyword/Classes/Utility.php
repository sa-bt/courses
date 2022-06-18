<?php

namespace StaticKeyword;

class Utility
{
    public static function redirect(string $url)
    {
        header("location:$url");
        exit();
    }
}