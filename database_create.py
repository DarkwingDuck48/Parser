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
# Hierarchies
cur.execute('''CREATE TABLE IF NOT EXISTS "Hierarchies"  ("id" INTEGER PRIMARY KEY,"Name" TEXT NOT NULL);''')
# Entity
cur.execute('''CREATE TABLE IF NOT EXISTS "Entity"("id" INTEGER PRIMARY KEY, "Parent" TEXT, "Child" TEXT, 
            "IsPrimary" TEXT, "Currency" TEXT, "AllowAdjs" TEXT, "AllowAdjFromChildren" TEXT, "HoldingCompany" TEXT,
            "SecurityAsPartner" TEXT, "IsICP" TEXT, "SecurityClass" TEXT, "UserDefined1" TEXT,"UserDefined2" TEXT, 
            "UserDefined3" TEXT, "Alias" TEXT);''')
# Account
cur.execute(
    '''CREATE TABLE IF NOT EXISTS "Accounts" (
"id" INTEGER PRIMARY KEY, 
"Parent" TEXT, 
"Child" TEXT, 
"IsPrimary" TEXT, 
"ConsolidationAccountType" TEXT, 
"IsCalculated" TEXT, 
"IsConsolidated" TEXT, 
"PlugAccount" TEXT, 
"CustomTopMemberAuditDim" TEXT, 
"CustomTopMemberCostCenterDisc2" TEXT, 
"CustomTopMemberMktOvr" TEXT,
"CustomTopMemberMovProd" TEXT, 
"CustomTopMemberRelPartDisc1" TEXT, 
"CustomTopMemberVarLob" TEXT, 
"CustomTopMemberCustType" TEXT, 
"NumDecimalPlaces" TEXT, 
"EnableCustomAggrAuditDim" TEXT, 
"EnableCustomAggrCostCenterDisc2" TEXT, 
"EnableCustomAggrMktOvr" TEXT, 
"EnableCustomAggrMovProd" TEXT, 
"EnableCustomAggrRelPartDisc1" TEXT, 
"EnableCustomAggrVarLob" TEXT, 
"EnableCustomAggrCustType" TEXT, 
"XBRLTags" TEXT, 
"ICPTopMember" TEXT, 
"IsICP" TEXT, 
"UsesLineItems" TEXT, 
"SecurityClass" TEXT, 
"EnableDataAudit" TEXT, 
"CalcAttribute" TEXT, 
"SubmissionGroup" TEXT, 
"UserDefined1" TEXT,
"UserDefined2" TEXT,
"UserDefined3" TEXT, 
"Alias" TEXT);''')
# MovProd
cur.execute(
    '''CREATE TABLE IF NOT EXISTS "MovProd" ("id" INTEGER PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT, 
                        "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT, 
                        "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                        "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')

con.commit()