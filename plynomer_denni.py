#!/usr/bin/env python2.7
import time
from datetime import date, timedelta
import MySQLdb as mdb

con = mdb.connect("localhost","tmep","heslotmep","tmep" )

try:
    cursor = con.cursor()

# secteme hodnoty ze sloupce spotreba za vcerejsi den
    vcerejsi_datum = date.today() - timedelta(1)
    cursor.execute("SELECT SUM(spotreba) FROM `plynomer_hodinova` WHERE time >= %s AND time < CURDATE()",(vcerejsi_datum))
    spotreba_den = cursor.fetchone()
    cursor.execute("SELECT SUM(spotreba) FROM plynomer_hodinova")
    spotreba_celkem = cursor.fetchone()
    cursor.execute("""INSERT INTO plynomer_denni (den, spotreba_den, spotreba_celkem) VALUES (%s, %s, %s)""",(vcerejsi_datum, spotreba_den[0], spotreba_celkem[0]))
    con.commit()
    con.close()
except:
    print "neco se nepovedlo"
    con.rollback()
    con.close()

