<?php

class IncrementCommentCount  implements SplObserver
{
    public function update(SplSubject $subject)
    {
        echo __METHOD__ . " Updating comment count to + 1 for blog post id: " . $subject->post_id . "<br>";
    }
}