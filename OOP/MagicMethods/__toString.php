<?php

class Magic
{
    //This method is called when we echo an instance of the class.

    public function __toString()
    {
      return "Salam";

    }
}
$class=new Magic();


echo $class;
