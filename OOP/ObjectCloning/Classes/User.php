<?php
namespace ObjectCloning;

class User
{
    public $projectName;

    public function __construct(Project $project)
    {
        $this->projectName = $project;
    }
}