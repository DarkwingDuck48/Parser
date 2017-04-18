import sqlite3 as lite
import os
import os.path


class Metadata(object):
    def __init__(self, databasename, ads_file):
        '''
        
        :param databasename: name of database without extention
        :param ads_file: ads file with GRSHFM metadata
        :parameter database_created: status of creation database 
        '''
        self.databasename = None
        self.database_created = False
        self.ads_file = ads_file
        err = databasename.split(".")
        if len(err) == 1:
            databasename += '.db'
            self.databasename = os.path.join(os.getcwd(), databasename)
        else:
            raise ValueError("You need to enter only name of file")

        self.data = self.parse()
        self.database_created = self.create_database()

        if self.data and self.database_created:
            for tablename in self.data.keys():
                data = list(enumerate(self.data[tablename], start=0))
                self.insertvalues(tablename, data)

    def parse(self):
        '''
        
        :return: dictionary with parsed metadata
        '''
        tablename = None
        data = {}
        data_str = []
        with open(self.ads_file, 'r', encoding='utf-8') as meta:
            for line in meta:
                if line.startswith("!Hierarchies"):  # or line.startswith('!Section'):
                    tablename = line.strip().split('=')[1]
                elif line.startswith("'"):
                    columns = line[1:].strip().split(";")
                    for i in range(0, len(columns)):
                        if columns[i].startswith("Alias"):
                            columns[i] = columns[i].strip().split("=")[0]
                    data_str.append(tuple(columns))
                elif not line.isspace():
                    data_str.append(line.strip().split(";"))
                else:
                    if tablename:
                        data.update({tablename: data_str})
                    data_str = []
        return data

    def create_database(self):
        con = lite.connect(self.databasename)
        with con:
            cur = con.cursor()

            # Entity
            cur.execute('''CREATE TABLE IF NOT EXISTS "Entity"("id" INTEGER PRIMARY KEY, "Parent" TEXT, "Child" TEXT,
                        "IsPrimary" TEXT, "Currency" TEXT, "AllowAdjs" TEXT, "AllowAdjFromChildren" TEXT, 
                        "HoldingCompany" TEXT, "SecurityAsPartner" TEXT, "IsICP" TEXT, "SecurityClass" TEXT, 
                        "UserDefined1" TEXT,"UserDefined2" TEXT, "UserDefined3" TEXT, "Alias" TEXT);''')
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
                '''CREATE TABLE IF NOT EXISTS "MovProd" ("id" INTEGER PRIMARY KEY, "Parent" TEXT, "Child" TEXT, 
                      "IsPrimary" TEXT, "AggregationWeight" TEXT, "SwitchSignForFlow" TEXT, "SwitchTypeForFlow" TEXT,
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

    def insertvalues(self, tablename, values):
        '''
        
        :param tablename: Name of dimension
        :param values: data from metadata
        :return: 
        '''
        con = lite.connect(self.databasename)
        with con:
            cur = con.cursor()
            if tablename == 'Entity':
                for i in range(1, len(values)):
                    data = [values[i][0]]
                    for x in values[i][1]:
                        data.append(x)
                    cur.executemany("INSERT OR REPLACE INTO Entity VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);", (data,))
            elif tablename == 'Account':
                for i in range(1, len(values)):
                    data = [values[i][0]]
                    for x in values[i][1]:
                        data.append(x)
                    cur.executemany('''INSERT OR REPLACE INTO Accounts VALUES
                                  (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);''', (data,))
            elif tablename in ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2',
                               'CustType']:
                for i in range(1, len(values)):
                    data = [values[i][0]]
                    for x in values[i][1]:
                        data.append(x)
                    cur.executemany('''INSERT OR REPLACE INTO %s 
                                        VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);''' % tablename, (data,))
        return True

if __name__ == '__main__':
    test = Metadata('classtest', 'GRSHFM_Metadata_17040101.ads')

