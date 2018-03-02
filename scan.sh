#!/bin/bash
IP=$1

TIMEOUT=6 # Timeout scan (in seconds). Lower for  faster results.
QUERIES=1000 # How many queries to send
QUERY_RATE=300 # Queries per seconds

STATS=`echo "$(gtimeout $TIMEOUT ./dnsblast $IP $QUERIES $QUERY_RATE)" | grep -E '^\S' | tail -n 1`

echo "IP: [$IP] $STATS"
