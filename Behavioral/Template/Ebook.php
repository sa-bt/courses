<?php
require_once 'Book.php';

class Ebook extends Book
{

    public function generateName($name)
    {
        echo "A PDF Was Generate for The eBook \"$name\".";
    }
}