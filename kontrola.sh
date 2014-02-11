#!/bin/bash

  # Service name
  SERVICE="/home/pi/plynomer/plynomer.py"

  PSV=$(ps aux | grep -v "grep" | grep $SERVICE | wc -l)

  if [ $PSV == "0" ];
    then

      # Not run!
      echo "$SERVICE is not running!"
      echo "$SERVICE is not running!" | mail -s "$SERVICE down (-restart)" ja@petrholcman.cz

      # Run
      nohup python /home/pi/plynomer/plynomer.py &

  fi

  unset SPHINXPID
  unset SERVICE

  exit 0
