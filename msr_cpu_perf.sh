#!/bin/bash
#CPU0

PercentBusy="\$1"
#1. Get perf-state:
MCNT=`rdmsr -p0 IA32_MPERF`
ACNT=`rdmsr -p0 IA32_APERF`

PercentPerf=`PercentBusy*(ACNT/MCNT)`

echo 'PercentPerf'
