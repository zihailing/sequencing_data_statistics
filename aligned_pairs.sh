#!/bin/sh
grep -E -A 1 'Aligned pairs' */*MAP/align_summary.txt >aa
perl get_number.pl aa >aligned_reads.txt
cat sequencing_3.xls |awk 'NR%2==1 {print $1 "\t" $3 "\t" $9}' >raw_clean_reads.txt
rm aa
