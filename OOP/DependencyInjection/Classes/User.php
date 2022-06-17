<?php

namespace DependencyInjection;
class User
{
    private $db;
    private $tableName="users";
    public function __construct(DatabaseInterface $database)
    {
        $this->db=$database->connection;
    }

    public function fetch()
    {
        $statement = $this->db->query("SELECT * FROM $this->tableName");
        return $statement->fetchAll(\PDO::FETCH_ASSOC);
    }
    public function insert(array $data)
    {
        $values = "'{$data['firstName']}', '{$data['lastName']}'";
        $this->db->query("INSERT INTO $this->tableName (`first_name`, `last_name`) VALUES ($values)");
    }
}