import sqlite3 as lite
import os
import os.path

class Metadata(object):
    def __init__(self, databasename, ads_file):
        self.databasename = None
        self.ads_file = ads_file
        err = databasename.split(".")
        if len(err) == 1:
            databasename += '.db'
            self.databasename = os.path.join(os.getcwd(), databasename)
        else:
            raise ValueError("You need to enter only name of file")

    def parse(self):
        tablename = None
        data = {}
        data_str = []
        with open(ads_file, 'r', encoding='utf-8') as meta:
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

    def insertvalues (self):
        con = lite.connect(db)
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
            elif tablename in ['MovProd', 'VarLob', 'MktOvr', 'AuditDim', 'RelPartDisc1', 'CostCenterDisc2', 'CustType']:
                for i in range(1, len(values)):
                    data = [values[i][0]]
                    for x in values[i][1]:
                        data.append(x)
                    cur.executemany("INSERT OR REPLACE INTO %s VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?);" % tablename, (data,))

if __name__ == '__main__':
    test = Metadata('join_test,txt','GRSHFM_Metadata_17040101.ads')
    print(test.databasename)
