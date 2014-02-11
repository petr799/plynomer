#!/usr/bin/env python2.7
import time
import datetime
import MySQLdb as mdb

con = mdb.connect("localhost","tmep","heslotmep","tmep" )

try:
    cursor = con.cursor()

# spocteme pocet radku v tabulce plynomer a zapiseme pocet do promene hodnota
    cursor.execute("SELECT COUNT(id) FROM plynomer")
    hodnota = cursor.fetchone() 
    spotreba = ( hodnota[0] * 1.0 ) / 100
#    spotreba = hodnota[0]
#    spotreba = 0.01
# promenou hodnota zapiseme do tabulky plynomer_denni spolecne s aktualnim casem a datumem
    cursor.execute("""INSERT INTO plynomer_hodinova (spotreba, time) VALUES (%s, %s)""",(spotreba, datetime.datetime.now()))

# smazeme puvodni hodnoty z tabulky plynomer
    cursor.execute("TRUNCATE plynomer")

    con.commit()
    con.close()
except:
    print "Neco se nepovedlo"
    con.rollback()
    con.close()
