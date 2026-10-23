#!/bin/bash
N=5

for i in $(seq 1 3); do
    if {
        echo "--- $(date '+%Y-%m-%d %H:%M:%S') ---" &&
        free -h &&
        df -h &&
        uptime
    } >> monitor.log; then
        sleep "$N"
    else
        echo "Ошибка: не удалось записать замер в monitor.log" >&2
        exit 1
    fi
done
