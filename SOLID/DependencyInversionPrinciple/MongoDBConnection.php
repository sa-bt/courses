<?php

require_once 'DBConnectionInterface.php';

class MongoDBConnection implements DBConnectionInterface
{

    public function connect()
    {
        return "mongodb is connected";
    }
}