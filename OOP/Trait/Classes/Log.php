<?php
namespace TraitCourse;
trait Log
{
    protected function log($msg)
    {
        echo "{$msg}\n";
    }
}