<?php

class Thing
{
    public function perform()
    {
        $tasks = [
            DoThis::class,
            DoThat::class,
            RunSth::class,
            EraseSthElse::class,
            AddFooToBar::class,
        ];

        foreach ($tasks as $task) {
            (new $task)->handle();
        }
    }
}