#!/bin/sh

PID_FILE="/var/run/3proxy.pid"

trap "cat /var/run/3proxy.pid | xargs kill" INT TERM

/usr/bin/3proxy /etc/3proxy/3proxy.cfg &

wait
