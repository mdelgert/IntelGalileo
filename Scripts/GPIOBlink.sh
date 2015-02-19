#!/bin/bash

#Example 1 Blink onboard led from linux

# echo -n "3" > /sys/class/gpio/export

# echo -n "out" > /sys/class/gpio/gpio3/direction

# echo -n "1" > /sys/class/gpio/gpio3/value

# echo -n "0" > /sys/class/gpio/gpio3/value

COUNTER=0

while [  $COUNTER -lt 100 ]; do

echo Blink $COUNTER

sleep 1

echo -n 1 > /sys/class/gpio/gpio3/value

sleep 1

echo -n 0 > /sys/class/gpio/gpio3/value

let COUNTER=COUNTER+1

  done
