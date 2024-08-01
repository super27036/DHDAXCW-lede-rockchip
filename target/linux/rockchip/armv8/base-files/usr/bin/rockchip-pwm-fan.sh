#!/bin/bash

echo -n 0 > /sys/class/thermal/cooling_device0/cur_state

declare -a CpuTemps=(65000 60000 55000 50000 49000)
declare -a CoolState=(4 3 2 1 0)

last_duty=0

while true
do
  temp=$(cat /sys/class/thermal/thermal_zone0/temp)
  DUTY=0

  for i in ${!CpuTemps[@]}; do
    if [ $temp -ge ${CpuTemps[$i]} ]; then
      DUTY=${CoolState[$i]}
      break
    fi
  done

  if [ $DUTY -ne $last_duty ]; then
    echo -n $DUTY > /sys/class/thermal/cooling_device0/cur_state
    last_duty=$DUTY
  fi

  echo "temp: $temp, duty: $DUTY"

  sleep 60s
done
