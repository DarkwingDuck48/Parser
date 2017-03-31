"""
Create database with all needed tables in it with correct column names
"""

import sqlite3 as lite
import os
import os.path

#if os.path.exists(os.getcwd()+'\\test.db'):
#    os.remove(os.getcwd()+'\\test.db')
#    print("DB deleted")

con = lite.connect('test.db')
cur = con.cursor()
cur.execute('''CREATE TABLE "Hierarchies" ("id" INTEGER PRIMARY KEY,
                  "Name" TEXT NOT NULL);''')
cur.execute('''CREATE TABLE "Entity"("id" INTEGER PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT, 
                      "Currency" TEXT, "AllowAdjs" TEXT, "AllowAdjFromChildren" TEXT, "HoldingCompany" TEXT,
                      "SecurityAsPartner" TEXT, "IsICP" TEXT, "SecurityClass" TEXT, "UserDefined1" TEXT,
                      "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
con.commit()