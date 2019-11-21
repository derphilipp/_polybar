#!/usr/bin/env bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main >> /tmp/polybar1.log &

echo "Bars launched"



