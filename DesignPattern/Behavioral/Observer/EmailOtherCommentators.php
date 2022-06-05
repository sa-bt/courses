<?php

class EmailOtherCommentators  implements SplObserver
{
    public function update(SplSubject $subject)
    {
        echo __METHOD__ . " Emailing all other comment authors who commented on " . $subject->post_id . " that someone commented with : " . $subject->comment_text . "<br>";
    }
}