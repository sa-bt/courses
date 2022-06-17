<?php

namespace DependencyInjection;

final class Database2 implements DatabaseInterface
{
    public $connection;

    public function __construct()
    {
        $this->connection = new \PDO("mysql:host=localhost;dbname=php_oop", "root", '');
        $this->connection->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
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