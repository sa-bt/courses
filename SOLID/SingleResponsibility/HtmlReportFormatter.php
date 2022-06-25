<?php

require_once 'ReportFormattable.php';

class HtmlReportFormatter implements ReportFormattable
{

    public function format(Report $report)
    {
        $resultset = '';
        foreach($report->getContents() as $item) {
            $resultset .= "<h2>$item</h2>";
        }
        return $resultset;
    }
}