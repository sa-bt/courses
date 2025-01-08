<?php

// Path to email list file
$emailListFile = 'emails.txt';

// Email subject and message
$subject = '📢 Test Newsletter';
$message = "
<html>
<head><title>Newsletter</title></head>
<body>
<h2>Hello friend!</h2>
<p>This is a test email sent from our PHP script 😄</p>
<p style='color: gray'>If you don't want to receive it, just ignore — it's fake anyway :)</p>
</body>
</html>
";

// Headers for HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= 'From: Your Name <you@example.com>' . "\r\n";

// Check if the email list file exists
if (!file_exists($emailListFile)) {
    die("❌ File emails.txt not found!");
}

// Read the email list
$emails = file($emailListFile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

foreach ($emails as $email) {
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $success = mail($email, $subject, $message, $headers);
        if ($success) {
            echo "✅ Sent to: $email\n";
        } else {
            echo "❌ Failed to send to: $email\n";
        }
    } else {
        echo "⚠️ Invalid email address: $email\n";
    }
}

?>
