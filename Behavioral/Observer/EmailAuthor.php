<?php

class EmailAuthor implements SplObserver
{
    public function update(SplSubject $subject)
    {
        echo __METHOD__ . " Emailing the author of post id: " . $subject->post_id . " that someone commented with : " . $subject->comment_text . "<br>";
        }
}