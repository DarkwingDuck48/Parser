"""
Create database with all needed tables in it with correct column names

"""
# todo rewrite as class, add insert function in this class.
# todo add check succsessful creation of database

import sqlite3 as lite
import os
import os.path

#if os.path.exists(os.getcwd()+'\\test.db'):
#    os.remove(os.getcwd()+'\\test.db')
#    print("DB deleted")


def create_database(databasename):

    con = lite.connect(databasename)
    with con:
        cur = con.cursor()

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
        "CustomTopMemberAuditDim" TEXT DEFAULT '[None]',
        "CustomTopMemberCostCenterDisc2" TEXT DEFAULT '[None]',
        "CustomTopMemberMktOvr" TEXT DEFAULT '[None]',
        "CustomTopMemberMovProd" TEXT DEFAULT '[None]',
        "CustomTopMemberRelPartDisc1" TEXT DEFAULT '[None]',
        "CustomTopMemberVarLob" TEXT DEFAULT '[None]',
        "CustomTopMemberCustType" TEXT DEFAULT '[None]',
        "NumDecimalPlaces" INTEGER,
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
        # VarLob
        cur.execute(
            ''' CREATE TABLE IF NOT EXISTS "VarLob" ("id" PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT,
                                "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
                                "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                                "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
        # MktOvr
        cur.execute(
            ''' CREATE TABLE IF NOT EXISTS "MktOvr" ("id" PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT,
                                "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
                                "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                                "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
        # AuditDim
        cur.execute(
            ''' CREATE TABLE IF NOT EXISTS "AuditDim" ("id" PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT,
                                "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
                                "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                                "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
        # RelPartDisc1
        cur.execute(
            ''' CREATE TABLE IF NOT EXISTS "RelPartDisc1" ("id" PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT,
                                "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
                                "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                                "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
        # CostCenterDisc2
        cur.execute(
            ''' CREATE TABLE IF NOT EXISTS "CostCenterDisc2" ("id" PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT,
                                "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
                                "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                                "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')

        # CustType
        cur.execute(
            ''' CREATE TABLE IF NOT EXISTS "CustType" ("id" PRIMARY KEY, "Parent" TEXT, "Child" TEXT, "IsPrimary" TEXT,
                                "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
                                "SecurityClass" TEXT, "IsCalculated" TEXT, "SubmissionGroup" TEXT, "UserDefined1" TEXT,
                                "UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
    return True

if __name__ == '__main__':
    if create_database('func_test.db'):
        print ('Done')
