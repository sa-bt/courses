<?php
require_once 'Content.php';
require_once 'MongoDBConnection.php';
$db = new MongoDBConnection();
$content = new Content($db);
echo $content->showConnection();