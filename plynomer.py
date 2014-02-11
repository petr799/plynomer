#!/usr/bin/env python2.7
import sys
import time
import datetime
import MySQLdb
import RPi.GPIO as GPIO

GPIO.setmode(GPIO.BCM)
soubor = open("plynomer.log","a")
# GPIO 23 set up as input. It is pulled up to stop false signals
GPIO.setup(23, GPIO.IN, pull_up_down=GPIO.PUD_UP)
time_stamp = time.time()

db = MySQLdb.connect("localhost","tmep","heslotmep","tmep" )

while True:
  try:   
    GPIO.wait_for_edge(23, GPIO.FALLING)
    global time_stamp
    time_now = time.time()
    if (time_now - time_stamp) >= 0.3:
         cursor = db.cursor()
         cursor.execute("""INSERT INTO plynomer (time) VALUES (%s)""",(datetime.datetime.now()))
         db.commit()
    time_stamp = time_now
  except:
    GPIO.cleanup()
    db.close()
    sys.stdout = soubor
    print datetime.datetime.now()
    sys.stdout=sys.__stdout__


GPIO.cleanup()
db.close()
sys.stdout = soubor
print datetime.datetime.now()
soubor.close()
sys.stdout=sys.__stdout__
