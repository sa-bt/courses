<?php

namespace AccessModifier;

class Visibility
{
    public $publicProperty = "Public Property";
    protected $protectedProperty = "Protected Property";
    private $privateProperty = "Private Property";

    public function __construct()
    {
        echo "The protected property is: $this->protectedProperty\n";
        echo "The private property is: $this->privateProperty\n";
        $this->showProtectedMethod();
        $this->showPrivateMethod();
    }

    public function showPublicMethod()
    {
        echo "This is a public method\n";
    }

    protected function showProtectedMethod()
    {
        echo "This is a protected method\n";
    }

    private function showPrivateMethod()
    {
        echo "This is a private method\n";
    }}