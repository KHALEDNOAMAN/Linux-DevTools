#!/bin/bash
echo "=== System Health ==="
echo "CPU: $(top -bn1 | grep Cpu | awk '{print $2}')%"
echo "RAM: $(free -m | awk 'NR==2{printf "%s/%sMB (%.1f%%)", $3,$2,$3*100/$2}')"
echo "Disk: $(df -h / | awk 'NR==2{print $5}')"