<?php

require_once 'DBConnectionInterface.php';

class Content
{
    private $dbConnection;

    public function __construct(DBConnectionInterface $dbConnection)
    {
        $this->dbConnection = $dbConnection;
    }

    public function showConnection()
    {
        return $this->dbConnection->connect();
    }
}