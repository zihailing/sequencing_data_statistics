#!/bin/sh
cat cleandata/*/*.sta >Ash2-2_sequencing_1
perl ~/zihailing/tool/format_reads_report.pl Ash2-2_sequencing_1 >Ash2-2_sequencing_2
perl ~/zihailing/tool/sta_to_xls.pl Ash2-2_sequencing_2 >Ash2-2_sequencing_3
