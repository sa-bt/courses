<?php
require_once 'Report.php';
require_once 'HtmlReportFormatter.php';
$report = new Report();
$reportAsJson = new HtmlReportFormatter();
echo $reportAsJson->format($report);