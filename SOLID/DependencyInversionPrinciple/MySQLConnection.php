<?php

require_once 'DBConnectionInterface.php';

class MySQLConnection implements DBConnectionInterface
{

    public function connect()
    {
        return "mysql is connected";
    }
}