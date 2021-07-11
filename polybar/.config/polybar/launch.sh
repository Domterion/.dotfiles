#!/usr/bin/env bash

killall -q polybar

echo "---" | tee -a /tmp/polybar1.log 
polybar -c ~/.config/polybar/config.ini bar >>/tmp/polybar1.log 2>&1 & disown
echo "Bars launched..."
