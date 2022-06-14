<?php

namespace DependencyInjection;
class User
{
    private $db;
    private $tableName="users";
    public function __construct($database)
    {
        $this->db=$database->connection;
    }

    public function fetch()
    {
        $statement = $this->db->query("SELECT * FROM $this->tableName");
        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }
}