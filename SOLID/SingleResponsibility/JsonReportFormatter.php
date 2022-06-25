<?php

require_once 'ReportFormattable.php';

class JsonReportFormatter implements ReportFormattable
{

    public function format(Report $report)
    {
        return json_encode($report->getContents());
    }
}