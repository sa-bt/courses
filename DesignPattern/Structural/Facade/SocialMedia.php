<?php
require_once 'Twitter.php';
require_once 'Facebook.php';
require_once 'GooglePlus.php';

class SocialMedia
{
    private $twitter;
    private $facebook;
    private $googlePlus;

    public function __construct(ShareInterface $twitter, ShareInterface $facebook, ShareInterface $googlePlus)
    {
        $this->twitter = $twitter;
        $this->facebook = $facebook;
        $this->googlePlus = $googlePlus;
    }

    public function shareMessage($message)
    {
        $this->twitter->setMessage($message);
        $this->facebook->setMessage($message);
        $this->googlePlus->setMessage($message);
        return $this;
    }

    public function shareOnSocial()
    {
        $this->twitter->share();
        $this->facebook->share();
        $this->googlePlus->share();
    }
}