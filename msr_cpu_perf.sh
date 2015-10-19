#!/bin/bash
#CPU0

PercentBusy="\$1"
#1. Get perf-state:
MCNT=`rdmsr -p0 IA32_MPERF`
ACNT=`rdmsr -p0 IA32_APERF`
URC=`rdmsr -p0 IA32_PERF_FIXED_CTR2`
UCC=`rdmsr -p0 IA32_PERF_FIXED_CTR1`
PercentPerf=`PercentBusy*(ACNT/MCNT)`

echo 'PercentPerf'
