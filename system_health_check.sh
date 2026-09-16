#!/bin/bash

echo "========================================"
echo " Linux Production Toolkit"
echo " System Health Check"
echo "========================================"
echo

echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo

echo "=== LOAD AVERAGE ==="
uptime
echo

echo "=== MEMORY ==="
free -h
echo

echo "=== FILESYSTEM ==="
df -h
echo

echo "=== TOP CPU PROCESSES ==="
ps -eo pid,user,%cpu,%mem,comm --sort=-%cpu | head -n 6
echo

echo "=== TOP MEMORY PROCESSES ==="
ps -eo pid,user,%cpu,%mem,comm --sort=-%mem | head -n 6
echo

echo "========================================"
echo " Health check completed"
echo "========================================"
